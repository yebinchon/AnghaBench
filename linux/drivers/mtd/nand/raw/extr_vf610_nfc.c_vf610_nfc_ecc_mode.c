
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_nfc {int dummy; } ;


 int CONFIG_ECC_MODE_MASK ;
 int CONFIG_ECC_MODE_SHIFT ;
 int NFC_FLASH_CONFIG ;
 int vf610_nfc_set_field (struct vf610_nfc*,int ,int ,int ,int) ;

__attribute__((used)) static inline void vf610_nfc_ecc_mode(struct vf610_nfc *nfc, int ecc_mode)
{
 vf610_nfc_set_field(nfc, NFC_FLASH_CONFIG,
       CONFIG_ECC_MODE_MASK,
       CONFIG_ECC_MODE_SHIFT, ecc_mode);
}
