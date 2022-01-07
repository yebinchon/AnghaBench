
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_nfc {int dummy; } ;


 int CONFIG_16BIT ;
 int CONFIG_ADDR_AUTO_INCR_BIT ;
 int CONFIG_BOOT_MODE_BIT ;
 int CONFIG_BUFNO_AUTO_INCR_BIT ;
 int CONFIG_DMA_REQ_BIT ;
 int CONFIG_FAST_FLASH_BIT ;
 int CONFIG_PAGE_CNT_MASK ;
 int CONFIG_PAGE_CNT_SHIFT ;
 int ECC_BYPASS ;
 int NFC_FLASH_CONFIG ;
 int vf610_nfc_clear (struct vf610_nfc*,int ,int ) ;
 int vf610_nfc_ecc_mode (struct vf610_nfc*,int ) ;
 int vf610_nfc_set (struct vf610_nfc*,int ,int ) ;
 int vf610_nfc_set_field (struct vf610_nfc*,int ,int ,int ,int) ;

__attribute__((used)) static void vf610_nfc_preinit_controller(struct vf610_nfc *nfc)
{
 vf610_nfc_clear(nfc, NFC_FLASH_CONFIG, CONFIG_16BIT);
 vf610_nfc_clear(nfc, NFC_FLASH_CONFIG, CONFIG_ADDR_AUTO_INCR_BIT);
 vf610_nfc_clear(nfc, NFC_FLASH_CONFIG, CONFIG_BUFNO_AUTO_INCR_BIT);
 vf610_nfc_clear(nfc, NFC_FLASH_CONFIG, CONFIG_BOOT_MODE_BIT);
 vf610_nfc_clear(nfc, NFC_FLASH_CONFIG, CONFIG_DMA_REQ_BIT);
 vf610_nfc_set(nfc, NFC_FLASH_CONFIG, CONFIG_FAST_FLASH_BIT);
 vf610_nfc_ecc_mode(nfc, ECC_BYPASS);


 vf610_nfc_set_field(nfc, NFC_FLASH_CONFIG, CONFIG_PAGE_CNT_MASK,
       CONFIG_PAGE_CNT_SHIFT, 1);
}
