
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; } ;
struct TYPE_4__ {int options; TYPE_1__ ecc; } ;
struct vf610_nfc {TYPE_2__ chip; } ;


 int CONFIG_16BIT ;
 int CONFIG_ECC_SRAM_ADDR_MASK ;
 int CONFIG_ECC_SRAM_ADDR_SHIFT ;
 int CONFIG_ECC_SRAM_REQ_BIT ;
 int ECC_SRAM_ADDR ;
 int NAND_BUSWIDTH_16 ;
 scalar_t__ NAND_ECC_HW ;
 int NFC_FLASH_CONFIG ;
 int vf610_nfc_clear (struct vf610_nfc*,int ,int ) ;
 int vf610_nfc_set (struct vf610_nfc*,int ,int ) ;
 int vf610_nfc_set_field (struct vf610_nfc*,int ,int ,int ,int) ;

__attribute__((used)) static void vf610_nfc_init_controller(struct vf610_nfc *nfc)
{
 if (nfc->chip.options & NAND_BUSWIDTH_16)
  vf610_nfc_set(nfc, NFC_FLASH_CONFIG, CONFIG_16BIT);
 else
  vf610_nfc_clear(nfc, NFC_FLASH_CONFIG, CONFIG_16BIT);

 if (nfc->chip.ecc.mode == NAND_ECC_HW) {

  vf610_nfc_set_field(nfc, NFC_FLASH_CONFIG,
        CONFIG_ECC_SRAM_ADDR_MASK,
        CONFIG_ECC_SRAM_ADDR_SHIFT,
        ECC_SRAM_ADDR >> 3);


  vf610_nfc_set(nfc, NFC_FLASH_CONFIG, CONFIG_ECC_SRAM_REQ_BIT);
 }
}
