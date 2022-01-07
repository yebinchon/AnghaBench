
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int chip_shift; } ;
struct mtd_oob_ops {size_t len; size_t retlen; int mode; int * datbuf; } ;
struct mtd_info {int dummy; } ;
typedef int ops ;
typedef int loff_t ;


 int MTD_OPS_PLACE_OOB ;
 int memset (struct mtd_oob_ops*,int ,int) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 int nand_do_write_ops (struct nand_chip*,int,struct mtd_oob_ops*) ;
 int nand_select_target (struct nand_chip*,int) ;
 int panic_nand_wait (struct nand_chip*,int) ;

__attribute__((used)) static int panic_nand_write(struct mtd_info *mtd, loff_t to, size_t len,
       size_t *retlen, const uint8_t *buf)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 int chipnr = (int)(to >> chip->chip_shift);
 struct mtd_oob_ops ops;
 int ret;

 nand_select_target(chip, chipnr);


 panic_nand_wait(chip, 400);

 memset(&ops, 0, sizeof(ops));
 ops.len = len;
 ops.datbuf = (uint8_t *)buf;
 ops.mode = MTD_OPS_PLACE_OOB;

 ret = nand_do_write_ops(chip, to, &ops);

 *retlen = ops.retlen;
 return ret;
}
