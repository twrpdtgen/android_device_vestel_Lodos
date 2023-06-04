#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Lodos device
$(call inherit-product, device/vestel/Lodos/device.mk)

PRODUCT_DEVICE := Lodos
PRODUCT_NAME := omni_Lodos
PRODUCT_BRAND := Vestel
PRODUCT_MODEL := Venus e5
PRODUCT_MANUFACTURER := vestel

PRODUCT_GMS_CLIENTID_BASE := android-vestel

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k63v2_64_bsp-user 9 VT1020 1569557297 release-keys"

BUILD_FINGERPRINT := Vestel/Lodos/Lodos:9/VT1020/1569557297:user/release-keys
