
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vf610_nfc {int data_access; } ;
struct nand_chip {int dummy; } ;


 struct vf610_nfc* chip_to_nfc (struct nand_chip*) ;
 int nand_read_page_raw (struct nand_chip*,int *,int,int) ;

__attribute__((used)) static int vf610_nfc_read_page_raw(struct nand_chip *chip, u8 *buf,
       int oob_required, int page)
{
 struct vf610_nfc *nfc = chip_to_nfc(chip);
 int ret;

 nfc->data_access = 1;
 ret = nand_read_page_raw(chip, buf, oob_required, page);
 nfc->data_access = 0;

 return ret;
}
