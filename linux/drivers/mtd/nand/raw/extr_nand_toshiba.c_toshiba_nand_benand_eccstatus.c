
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int dummy; } ;
struct TYPE_2__ {unsigned int corrected; int failed; } ;
struct mtd_info {unsigned int bitflip_threshold; TYPE_1__ ecc_stats; } ;


 int NAND_STATUS_FAIL ;
 int TOSHIBA_NAND_STATUS_REWRITE_RECOMMENDED ;
 int nand_status_op (struct nand_chip*,int*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int toshiba_nand_benand_eccstatus(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;
 unsigned int max_bitflips = 0;
 u8 status;


 ret = nand_status_op(chip, &status);
 if (ret)
  return ret;

 if (status & NAND_STATUS_FAIL) {

  mtd->ecc_stats.failed++;
 } else if (status & TOSHIBA_NAND_STATUS_REWRITE_RECOMMENDED) {

  max_bitflips = mtd->bitflip_threshold;
  mtd->ecc_stats.corrected += max_bitflips;
 }

 return max_bitflips;
}
