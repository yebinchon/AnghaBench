
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nand_ecc_ctrl {int mode; int size; int strength; } ;
struct TYPE_4__ {int step_size; int strength; } ;
struct TYPE_5__ {TYPE_1__ eccreq; } ;
struct nand_chip {TYPE_2__ base; int controller; } ;
struct mtd_info {int writesize; } ;
struct marvell_nfc {int dev; TYPE_3__* caps; } ;
struct TYPE_6__ {int is_nfcv2; } ;


 int EINVAL ;




 int SZ_2K ;
 int SZ_512 ;
 int dev_err (int ,char*,int ) ;
 int dev_info (int ,char*) ;
 int marvell_nand_hw_ecc_ctrl_init (struct mtd_info*,struct nand_ecc_ctrl*) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;

__attribute__((used)) static int marvell_nand_ecc_init(struct mtd_info *mtd,
     struct nand_ecc_ctrl *ecc)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 int ret;

 if (ecc->mode != 130 && (!ecc->size || !ecc->strength)) {
  if (chip->base.eccreq.step_size && chip->base.eccreq.strength) {
   ecc->size = chip->base.eccreq.step_size;
   ecc->strength = chip->base.eccreq.strength;
  } else {
   dev_info(nfc->dev,
     "No minimum ECC strength, using 1b/512B\n");
   ecc->size = 512;
   ecc->strength = 1;
  }
 }

 switch (ecc->mode) {
 case 131:
  ret = marvell_nand_hw_ecc_ctrl_init(mtd, ecc);
  if (ret)
   return ret;
  break;
 case 130:
 case 128:
 case 129:
  if (!nfc->caps->is_nfcv2 && mtd->writesize != SZ_512 &&
      mtd->writesize != SZ_2K) {
   dev_err(nfc->dev, "NFCv1 cannot write %d bytes pages\n",
    mtd->writesize);
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
