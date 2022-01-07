
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct TYPE_5__ {scalar_t__ sec; int (* bm_swap ) (struct mtd_info*,int *,int) ;} ;
struct mtk_nfc_nand_chip {int spare_per_sector; TYPE_2__ bad_mark; } ;
struct TYPE_6__ {int sectors; int op; int mode; } ;
struct mtk_nfc {int ecc; int dev; scalar_t__ regs; int done; TYPE_3__ ecc_cfg; } ;
struct mtd_info {int dummy; } ;
typedef int dma_addr_t ;


 int ADDRCNTR_SEC (int) ;
 int CNFG_AHB ;
 int CNFG_AUTO_FMT_EN ;
 int CNFG_DMA_BURST_EN ;
 int CNFG_HW_ECC_EN ;
 int CNFG_READ_EN ;
 int CON_BRD ;
 int CON_SEC_SHIFT ;
 int DIV_ROUND_UP (int,int) ;
 int DMA_FROM_DEVICE ;
 int ECC_DECODE ;
 int ECC_NFI_MODE ;
 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;
 int INTR_AHB_DONE_EN ;
 int MTK_TIMEOUT ;
 scalar_t__ NFI_BYTELEN ;
 int NFI_CNFG ;
 int NFI_CON ;
 int NFI_INTR_EN ;
 int NFI_STRADDR ;
 int NFI_STRDATA ;
 int STAR_EN ;
 scalar_t__ clamp (scalar_t__,int,int) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int dma_map_single (int ,int *,size_t,int ) ;
 int dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,size_t,int ) ;
 int init_completion (int *) ;
 int lower_32_bits (int ) ;
 int msecs_to_jiffies (int) ;
 int mtk_ecc_disable (int ) ;
 int mtk_ecc_enable (int ,TYPE_3__*) ;
 int mtk_ecc_wait_done (int ,int ) ;
 int mtk_nfc_read_fdm (struct nand_chip*,int,int) ;
 int mtk_nfc_update_ecc_stats (struct mtd_info*,int *,int,int) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 int nand_read_page_op (struct nand_chip*,int,int,int *,int ) ;
 int nfi_readl (struct mtk_nfc*,int ) ;
 int nfi_readw (struct mtk_nfc*,int ) ;
 int nfi_writel (struct mtk_nfc*,int,int ) ;
 int nfi_writew (struct mtk_nfc*,int,int ) ;
 int readl_poll_timeout_atomic (scalar_t__,int,int,int,int ) ;
 int stub1 (struct mtd_info*,int *,int) ;
 struct mtk_nfc_nand_chip* to_mtk_nand (struct nand_chip*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int mtk_nfc_read_subpage(struct mtd_info *mtd, struct nand_chip *chip,
    u32 data_offs, u32 readlen,
    u8 *bufpoi, int page, int raw)
{
 struct mtk_nfc *nfc = nand_get_controller_data(chip);
 struct mtk_nfc_nand_chip *mtk_nand = to_mtk_nand(chip);
 u32 spare = mtk_nand->spare_per_sector;
 u32 column, sectors, start, end, reg;
 dma_addr_t addr;
 int bitflips = 0;
 size_t len;
 u8 *buf;
 int rc;

 start = data_offs / chip->ecc.size;
 end = DIV_ROUND_UP(data_offs + readlen, chip->ecc.size);

 sectors = end - start;
 column = start * (chip->ecc.size + spare);

 len = sectors * chip->ecc.size + (raw ? sectors * spare : 0);
 buf = bufpoi + start * chip->ecc.size;

 nand_read_page_op(chip, page, column, ((void*)0), 0);

 addr = dma_map_single(nfc->dev, buf, len, DMA_FROM_DEVICE);
 rc = dma_mapping_error(nfc->dev, addr);
 if (rc) {
  dev_err(nfc->dev, "dma mapping error\n");

  return -EINVAL;
 }

 reg = nfi_readw(nfc, NFI_CNFG);
 reg |= CNFG_READ_EN | CNFG_DMA_BURST_EN | CNFG_AHB;
 if (!raw) {
  reg |= CNFG_AUTO_FMT_EN | CNFG_HW_ECC_EN;
  nfi_writew(nfc, reg, NFI_CNFG);

  nfc->ecc_cfg.mode = ECC_NFI_MODE;
  nfc->ecc_cfg.sectors = sectors;
  nfc->ecc_cfg.op = ECC_DECODE;
  rc = mtk_ecc_enable(nfc->ecc, &nfc->ecc_cfg);
  if (rc) {
   dev_err(nfc->dev, "ecc enable\n");

   reg &= ~(CNFG_DMA_BURST_EN | CNFG_AHB | CNFG_READ_EN |
    CNFG_AUTO_FMT_EN | CNFG_HW_ECC_EN);
   nfi_writew(nfc, reg, NFI_CNFG);
   dma_unmap_single(nfc->dev, addr, len, DMA_FROM_DEVICE);

   return rc;
  }
 } else {
  nfi_writew(nfc, reg, NFI_CNFG);
 }

 nfi_writel(nfc, sectors << CON_SEC_SHIFT, NFI_CON);
 nfi_writew(nfc, INTR_AHB_DONE_EN, NFI_INTR_EN);
 nfi_writel(nfc, lower_32_bits(addr), NFI_STRADDR);

 init_completion(&nfc->done);
 reg = nfi_readl(nfc, NFI_CON) | CON_BRD;
 nfi_writel(nfc, reg, NFI_CON);
 nfi_writew(nfc, STAR_EN, NFI_STRDATA);

 rc = wait_for_completion_timeout(&nfc->done, msecs_to_jiffies(500));
 if (!rc)
  dev_warn(nfc->dev, "read ahb/dma done timeout\n");

 rc = readl_poll_timeout_atomic(nfc->regs + NFI_BYTELEN, reg,
           ADDRCNTR_SEC(reg) >= sectors, 10,
           MTK_TIMEOUT);
 if (rc < 0) {
  dev_err(nfc->dev, "subpage done timeout\n");
  bitflips = -EIO;
 } else if (!raw) {
  rc = mtk_ecc_wait_done(nfc->ecc, ECC_DECODE);
  bitflips = rc < 0 ? -ETIMEDOUT :
   mtk_nfc_update_ecc_stats(mtd, buf, start, sectors);
  mtk_nfc_read_fdm(chip, start, sectors);
 }

 dma_unmap_single(nfc->dev, addr, len, DMA_FROM_DEVICE);

 if (raw)
  goto done;

 mtk_ecc_disable(nfc->ecc);

 if (clamp(mtk_nand->bad_mark.sec, start, end) == mtk_nand->bad_mark.sec)
  mtk_nand->bad_mark.bm_swap(mtd, bufpoi, raw);
done:
 nfi_writel(nfc, 0, NFI_CON);

 return bitflips;
}
