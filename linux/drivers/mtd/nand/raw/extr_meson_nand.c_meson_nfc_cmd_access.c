
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct meson_nfc_nand_chip {int bch_mode; } ;
struct meson_nfc {scalar_t__ reg_base; } ;


 int CMDRWGEN (int,int,int,int ,int,int) ;
 int DMA_DIR (int) ;
 int GENMASK (int,int ) ;
 int NFC_CMD_SHORTMODE_DISABLE ;
 scalar_t__ NFC_REG_CMD ;
 int mtd_to_nand (struct mtd_info*) ;
 struct meson_nfc* nand_get_controller_data (int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct meson_nfc_nand_chip* to_meson_nand (struct nand_chip*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void meson_nfc_cmd_access(struct nand_chip *nand, int raw, bool dir,
     int scrambler)
{
 struct mtd_info *mtd = nand_to_mtd(nand);
 struct meson_nfc *nfc = nand_get_controller_data(mtd_to_nand(mtd));
 struct meson_nfc_nand_chip *meson_chip = to_meson_nand(nand);
 u32 bch = meson_chip->bch_mode, cmd;
 int len = mtd->writesize, pagesize, pages;

 pagesize = nand->ecc.size;

 if (raw) {
  len = mtd->writesize + mtd->oobsize;
  cmd = (len & GENMASK(5, 0)) | scrambler | DMA_DIR(dir);
  writel(cmd, nfc->reg_base + NFC_REG_CMD);
  return;
 }

 pages = len / nand->ecc.size;

 cmd = CMDRWGEN(DMA_DIR(dir), scrambler, bch,
         NFC_CMD_SHORTMODE_DISABLE, pagesize, pages);

 writel(cmd, nfc->reg_base + NFC_REG_CMD);
}
