
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int oob_poi; int cur_cs; } ;


 int marvell_nfc_hw_ecc_hmg_do_read_page (struct nand_chip*,int *,int ,int,int) ;
 int marvell_nfc_select_target (struct nand_chip*,int ) ;
 int * nand_get_data_buf (struct nand_chip*) ;

__attribute__((used)) static int marvell_nfc_hw_ecc_hmg_read_oob_raw(struct nand_chip *chip, int page)
{
 u8 *buf = nand_get_data_buf(chip);

 marvell_nfc_select_target(chip, chip->cur_cs);
 return marvell_nfc_hw_ecc_hmg_do_read_page(chip, buf, chip->oob_poi,
         1, page);
}
