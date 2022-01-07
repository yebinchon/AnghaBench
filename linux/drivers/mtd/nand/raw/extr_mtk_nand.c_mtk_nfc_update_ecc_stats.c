
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int size; } ;
struct nand_chip {TYPE_2__ ecc; } ;
struct TYPE_4__ {int reg_size; } ;
struct mtk_nfc_nand_chip {TYPE_1__ fdm; } ;
struct mtk_nfc {int ecc; } ;
struct mtk_ecc_stats {int bitflips; scalar_t__ failed; scalar_t__ corrected; } ;
struct TYPE_6__ {int failed; int corrected; } ;
struct mtd_info {TYPE_3__ ecc_stats; } ;


 int NFI_STA ;
 int STA_EMP_PAGE ;
 int memset (int *,int,int) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 int mtk_ecc_get_stats (int ,struct mtk_ecc_stats*,int) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 int nfi_readl (struct mtk_nfc*,int ) ;
 int * oob_ptr (struct nand_chip*,int) ;
 struct mtk_nfc_nand_chip* to_mtk_nand (struct nand_chip*) ;

__attribute__((used)) static int mtk_nfc_update_ecc_stats(struct mtd_info *mtd, u8 *buf, u32 start,
        u32 sectors)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct mtk_nfc *nfc = nand_get_controller_data(chip);
 struct mtk_nfc_nand_chip *mtk_nand = to_mtk_nand(chip);
 struct mtk_ecc_stats stats;
 u32 reg_size = mtk_nand->fdm.reg_size;
 int rc, i;

 rc = nfi_readl(nfc, NFI_STA) & STA_EMP_PAGE;
 if (rc) {
  memset(buf, 0xff, sectors * chip->ecc.size);
  for (i = 0; i < sectors; i++)
   memset(oob_ptr(chip, start + i), 0xff, reg_size);
  return 0;
 }

 mtk_ecc_get_stats(nfc->ecc, &stats, sectors);
 mtd->ecc_stats.corrected += stats.corrected;
 mtd->ecc_stats.failed += stats.failed;

 return stats.bitflips;
}
