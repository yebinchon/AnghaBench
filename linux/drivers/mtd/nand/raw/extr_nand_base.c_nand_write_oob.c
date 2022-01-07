
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtd_oob_ops {int mode; int datbuf; scalar_t__ retlen; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;





 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 int nand_do_write_oob (struct nand_chip*,int ,struct mtd_oob_ops*) ;
 int nand_do_write_ops (struct nand_chip*,int ,struct mtd_oob_ops*) ;
 int nand_get_device (struct nand_chip*) ;
 int nand_release_device (struct nand_chip*) ;

__attribute__((used)) static int nand_write_oob(struct mtd_info *mtd, loff_t to,
     struct mtd_oob_ops *ops)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 int ret;

 ops->retlen = 0;

 ret = nand_get_device(chip);
 if (ret)
  return ret;

 switch (ops->mode) {
 case 129:
 case 130:
 case 128:
  break;

 default:
  goto out;
 }

 if (!ops->datbuf)
  ret = nand_do_write_oob(chip, to, ops);
 else
  ret = nand_do_write_ops(chip, to, ops);

out:
 nand_release_device(chip);
 return ret;
}
