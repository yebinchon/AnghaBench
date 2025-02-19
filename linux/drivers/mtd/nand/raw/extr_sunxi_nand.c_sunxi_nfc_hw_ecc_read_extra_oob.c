
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_ecc_ctrl {int bytes; int steps; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int oobsize; int writesize; } ;


 int nand_change_read_column_op (struct nand_chip*,int,int *,int ,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int sunxi_nfc_randomizer_read_buf (struct nand_chip*,int *,int,int,int) ;
 int sunxi_nfc_read_buf (struct nand_chip*,int *,int) ;

__attribute__((used)) static void sunxi_nfc_hw_ecc_read_extra_oob(struct nand_chip *nand,
         u8 *oob, int *cur_off,
         bool randomize, int page)
{
 struct mtd_info *mtd = nand_to_mtd(nand);
 struct nand_ecc_ctrl *ecc = &nand->ecc;
 int offset = ((ecc->bytes + 4) * ecc->steps);
 int len = mtd->oobsize - offset;

 if (len <= 0)
  return;

 if (!cur_off || *cur_off != offset)
  nand_change_read_column_op(nand, mtd->writesize, ((void*)0), 0,
        0);

 if (!randomize)
  sunxi_nfc_read_buf(nand, oob + offset, len);
 else
  sunxi_nfc_randomizer_read_buf(nand, oob + offset, len,
           0, page);

 if (cur_off)
  *cur_off = mtd->oobsize + mtd->writesize;
}
