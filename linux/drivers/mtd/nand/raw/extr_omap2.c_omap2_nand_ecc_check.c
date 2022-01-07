
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_nand_info {int ecc_opt; TYPE_1__* pdev; int elm_of_node; } ;
struct TYPE_2__ {int dev; } ;


 int CONFIG_MTD_NAND_ECC_SW_BCH ;
 int CONFIG_MTD_NAND_OMAP_BCH ;
 int IS_ENABLED (int ) ;





 int dev_err (int *,char*) ;
 int is_elm_present (struct omap_nand_info*,int ) ;

__attribute__((used)) static bool omap2_nand_ecc_check(struct omap_nand_info *info)
{
 bool ecc_needs_bch, ecc_needs_omap_bch, ecc_needs_elm;

 switch (info->ecc_opt) {
 case 130:
 case 128:
  ecc_needs_omap_bch = 0;
  ecc_needs_bch = 1;
  ecc_needs_elm = 0;
  break;
 case 131:
 case 129:
 case 132:
  ecc_needs_omap_bch = 1;
  ecc_needs_bch = 0;
  ecc_needs_elm = 1;
  break;
 default:
  ecc_needs_omap_bch = 0;
  ecc_needs_bch = 0;
  ecc_needs_elm = 0;
  break;
 }

 if (ecc_needs_bch && !IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_BCH)) {
  dev_err(&info->pdev->dev,
   "CONFIG_MTD_NAND_ECC_SW_BCH not enabled\n");
  return 0;
 }
 if (ecc_needs_omap_bch && !IS_ENABLED(CONFIG_MTD_NAND_OMAP_BCH)) {
  dev_err(&info->pdev->dev,
   "CONFIG_MTD_NAND_OMAP_BCH not enabled\n");
  return 0;
 }
 if (ecc_needs_elm && !is_elm_present(info, info->elm_of_node)) {
  dev_err(&info->pdev->dev, "ELM not available\n");
  return 0;
 }

 return 1;
}
