
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_flash_dev {int dummy; } ;
struct nand_chip {int dummy; } ;


 int EINVAL ;
 int nand_attach (struct nand_chip*) ;
 int nand_detach (struct nand_chip*) ;
 int nand_scan_ident (struct nand_chip*,unsigned int,struct nand_flash_dev*) ;
 int nand_scan_ident_cleanup (struct nand_chip*) ;
 int nand_scan_tail (struct nand_chip*) ;

int nand_scan_with_ids(struct nand_chip *chip, unsigned int maxchips,
         struct nand_flash_dev *ids)
{
 int ret;

 if (!maxchips)
  return -EINVAL;

 ret = nand_scan_ident(chip, maxchips, ids);
 if (ret)
  return ret;

 ret = nand_attach(chip);
 if (ret)
  goto cleanup_ident;

 ret = nand_scan_tail(chip);
 if (ret)
  goto detach_chip;

 return 0;

detach_chip:
 nand_detach(chip);
cleanup_ident:
 nand_scan_ident_cleanup(chip);

 return ret;
}
