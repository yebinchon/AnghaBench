
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {scalar_t__ mode; int size; int strength; } ;
struct TYPE_5__ {int strength; int step_size; } ;
struct TYPE_6__ {TYPE_1__ eccreq; } ;
struct nand_chip {TYPE_4__ ecc; TYPE_2__ base; } ;
struct mtk_nfc {int ecc; TYPE_3__* caps; } ;
struct mtd_info {int writesize; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int max_sector_size; } ;


 int EINVAL ;
 scalar_t__ NAND_ECC_HW ;
 int NFI_FDM_MAX_SIZE ;
 scalar_t__ NFI_FDM_MIN_SIZE ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int,int) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 int mtk_ecc_adjust_strength (int ,int*) ;
 int mtk_ecc_get_parity_bits (int ) ;
 int mtk_nfc_set_spare_per_sector (int*,struct mtd_info*) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static int mtk_nfc_ecc_init(struct device *dev, struct mtd_info *mtd)
{
 struct nand_chip *nand = mtd_to_nand(mtd);
 struct mtk_nfc *nfc = nand_get_controller_data(nand);
 u32 spare;
 int free, ret;


 if (nand->ecc.mode != NAND_ECC_HW) {
  dev_err(dev, "ecc.mode not supported\n");
  return -EINVAL;
 }


 if (!nand->ecc.size || !nand->ecc.strength) {

  nand->ecc.strength = nand->base.eccreq.strength;
  nand->ecc.size = nand->base.eccreq.step_size;





  if (nand->ecc.size < 1024) {
   if (mtd->writesize > 512 &&
       nfc->caps->max_sector_size > 512) {
    nand->ecc.size = 1024;
    nand->ecc.strength <<= 1;
   } else {
    nand->ecc.size = 512;
   }
  } else {
   nand->ecc.size = 1024;
  }

  ret = mtk_nfc_set_spare_per_sector(&spare, mtd);
  if (ret)
   return ret;


  free = (nand->ecc.strength * mtk_ecc_get_parity_bits(nfc->ecc)
   + 7) >> 3;
  free = spare - free;






  if (free > NFI_FDM_MAX_SIZE) {
   spare -= NFI_FDM_MAX_SIZE;
   nand->ecc.strength = (spare << 3) /
          mtk_ecc_get_parity_bits(nfc->ecc);
  } else if (free < 0) {
   spare -= NFI_FDM_MIN_SIZE;
   nand->ecc.strength = (spare << 3) /
          mtk_ecc_get_parity_bits(nfc->ecc);
  }
 }

 mtk_ecc_adjust_strength(nfc->ecc, &nand->ecc.strength);

 dev_info(dev, "eccsize %d eccstrength %d\n",
   nand->ecc.size, nand->ecc.strength);

 return 0;
}
