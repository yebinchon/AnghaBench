
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c2410_nand_info {int device; int cpu_type; } ;
struct TYPE_2__ {int mode; int strength; int size; int bytes; void* calculate; int hwctl; int correct; int algo; } ;
struct nand_chip {int page_shift; int bbt_options; int options; TYPE_1__ ecc; } ;
struct mtd_info {int dummy; } ;


 int EINVAL ;
 int NAND_BBT_USE_FLASH ;
 int NAND_ECC_HAMMING ;



 int NAND_SKIP_BBTSCAN ;



 int dev_dbg (int ,char*,struct nand_chip*,int) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 void* s3c2410_nand_calculate_ecc ;
 int s3c2410_nand_correct_data ;
 int s3c2410_nand_enable_hwecc ;
 struct s3c2410_nand_info* s3c2410_nand_mtd_toinfo (struct mtd_info*) ;
 int s3c2410_ooblayout_ops ;
 void* s3c2412_nand_calculate_ecc ;
 int s3c2412_nand_enable_hwecc ;
 void* s3c2440_nand_calculate_ecc ;
 int s3c2440_nand_enable_hwecc ;

__attribute__((used)) static int s3c2410_nand_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct s3c2410_nand_info *info = s3c2410_nand_mtd_toinfo(mtd);

 switch (chip->ecc.mode) {

 case 132:
  dev_info(info->device, "ECC disabled\n");
  break;

 case 131:






  chip->ecc.algo = NAND_ECC_HAMMING;
  dev_info(info->device, "soft ECC\n");
  break;

 case 133:
  chip->ecc.calculate = s3c2410_nand_calculate_ecc;
  chip->ecc.correct = s3c2410_nand_correct_data;
  chip->ecc.strength = 1;

  switch (info->cpu_type) {
  case 130:
   chip->ecc.hwctl = s3c2410_nand_enable_hwecc;
   chip->ecc.calculate = s3c2410_nand_calculate_ecc;
   break;

  case 129:
   chip->ecc.hwctl = s3c2412_nand_enable_hwecc;
   chip->ecc.calculate = s3c2412_nand_calculate_ecc;
   break;

  case 128:
   chip->ecc.hwctl = s3c2440_nand_enable_hwecc;
   chip->ecc.calculate = s3c2440_nand_calculate_ecc;
   break;
  }

  dev_dbg(info->device, "chip %p => page shift %d\n",
   chip, chip->page_shift);



  if (chip->page_shift > 10) {
   chip->ecc.size = 256;
   chip->ecc.bytes = 3;
  } else {
   chip->ecc.size = 512;
   chip->ecc.bytes = 3;
   mtd_set_ooblayout(nand_to_mtd(chip),
       &s3c2410_ooblayout_ops);
  }

  dev_info(info->device, "hardware ECC\n");
  break;

 default:
  dev_err(info->device, "invalid ECC mode!\n");
  return -EINVAL;
 }

 if (chip->bbt_options & NAND_BBT_USE_FLASH)
  chip->options |= NAND_SKIP_BBTSCAN;

 return 0;
}
