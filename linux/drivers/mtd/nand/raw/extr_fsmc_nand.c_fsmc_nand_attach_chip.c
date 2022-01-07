
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int bytes; int strength; int algo; int options; int correct; int calculate; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; } ;
struct fsmc_nand_data {int dev; int pid; } ;


 int AMBA_REV_BITS (int ) ;
 int EINVAL ;
 int ENOTSUPP ;
 int NAND_ECC_BCH ;



 int NAND_ECC_SOFT_HAMMING_SM_ORDER ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*,int) ;
 int fsmc_ecc1_ooblayout_ops ;
 int fsmc_ecc4_ooblayout_ops ;
 int fsmc_read_hwecc_ecc1 ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 int nand_correct_data ;
 struct fsmc_nand_data* nand_to_fsmc (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int fsmc_nand_attach_chip(struct nand_chip *nand)
{
 struct mtd_info *mtd = nand_to_mtd(nand);
 struct fsmc_nand_data *host = nand_to_fsmc(nand);

 if (AMBA_REV_BITS(host->pid) >= 8) {
  switch (mtd->oobsize) {
  case 16:
  case 64:
  case 128:
  case 224:
  case 256:
   break;
  default:
   dev_warn(host->dev,
     "No oob scheme defined for oobsize %d\n",
     mtd->oobsize);
   return -EINVAL;
  }

  mtd_set_ooblayout(mtd, &fsmc_ecc4_ooblayout_ops);

  return 0;
 }

 switch (nand->ecc.mode) {
 case 130:
  dev_info(host->dev, "Using 1-bit HW ECC scheme\n");
  nand->ecc.calculate = fsmc_read_hwecc_ecc1;
  nand->ecc.correct = nand_correct_data;
  nand->ecc.bytes = 3;
  nand->ecc.strength = 1;
  nand->ecc.options |= NAND_ECC_SOFT_HAMMING_SM_ORDER;
  break;

 case 128:
  if (nand->ecc.algo == NAND_ECC_BCH) {
   dev_info(host->dev,
     "Using 4-bit SW BCH ECC scheme\n");
   break;
  }

 case 129:
  break;

 default:
  dev_err(host->dev, "Unsupported ECC mode!\n");
  return -ENOTSUPP;
 }





 if (nand->ecc.mode == 130) {
  switch (mtd->oobsize) {
  case 16:
  case 64:
  case 128:
   mtd_set_ooblayout(mtd,
       &fsmc_ecc1_ooblayout_ops);
   break;
  default:
   dev_warn(host->dev,
     "No oob scheme defined for oobsize %d\n",
     mtd->oobsize);
   return -EINVAL;
  }
 }

 return 0;
}
