
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int oob_poi; } ;
struct mtd_info {int oobsize; int writesize; } ;


 int nand_change_write_column_op (struct nand_chip*,int ,int ,int ,int) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stm32_fmc2_rw_page_init (struct nand_chip*,int,int,int) ;
 int stm32_fmc2_xfer (struct nand_chip*,int const*,int,int) ;

__attribute__((used)) static int stm32_fmc2_sequencer_write(struct nand_chip *chip,
          const u8 *buf, int oob_required,
          int page, int raw)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;


 stm32_fmc2_rw_page_init(chip, page, raw, 1);


 ret = stm32_fmc2_xfer(chip, buf, raw, 1);
 if (ret)
  return ret;


 if (oob_required) {
  ret = nand_change_write_column_op(chip, mtd->writesize,
        chip->oob_poi, mtd->oobsize,
        0);
  if (ret)
   return ret;
 }

 return nand_prog_page_end_op(chip);
}
