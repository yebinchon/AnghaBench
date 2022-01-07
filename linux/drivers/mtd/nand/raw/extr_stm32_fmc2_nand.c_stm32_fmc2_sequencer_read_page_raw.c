
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int oob_poi; int cur_cs; } ;
struct mtd_info {int oobsize; int writesize; } ;


 int nand_change_read_column_op (struct nand_chip*,int ,int ,int ,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stm32_fmc2_rw_page_init (struct nand_chip*,int,int,int) ;
 int stm32_fmc2_select_chip (struct nand_chip*,int ) ;
 int stm32_fmc2_xfer (struct nand_chip*,int *,int,int) ;

__attribute__((used)) static int stm32_fmc2_sequencer_read_page_raw(struct nand_chip *chip, u8 *buf,
           int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;


 ret = stm32_fmc2_select_chip(chip, chip->cur_cs);
 if (ret)
  return ret;


 stm32_fmc2_rw_page_init(chip, page, 1, 0);


 ret = stm32_fmc2_xfer(chip, buf, 1, 0);
 if (ret)
  return ret;


 if (oob_required)
  return nand_change_read_column_op(chip, mtd->writesize,
        chip->oob_poi, mtd->oobsize,
        0);

 return 0;
}
