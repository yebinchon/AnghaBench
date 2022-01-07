
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int dummy; } ;
struct TYPE_2__ {int corrected; int failed; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;





 int NAND_ECC_STATUS_MASK ;

 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int micron_nand_on_die_ecc_status_8(struct nand_chip *chip, u8 status)
{
 struct mtd_info *mtd = nand_to_mtd(chip);





 switch (status & NAND_ECC_STATUS_MASK) {
 case 128:
  mtd->ecc_stats.failed++;
  return 0;
 case 131:
  mtd->ecc_stats.corrected += 3;
  return 3;
 case 130:
  mtd->ecc_stats.corrected += 6;

  return 6;
 case 129:
  mtd->ecc_stats.corrected += 8;

  return 8;
 default:
  return 0;
 }
}
