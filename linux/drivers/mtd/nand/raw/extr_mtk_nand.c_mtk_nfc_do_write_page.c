
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int steps; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtk_nfc {struct device* dev; scalar_t__ regs; int done; } ;
struct mtd_info {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int ADDRCNTR_SEC (int) ;
 int CNFG_AHB ;
 int CNFG_DMA_BURST_EN ;
 int CON_BWR ;
 int CON_SEC_SHIFT ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ETIMEDOUT ;
 int INTR_AHB_DONE_EN ;
 int MTK_TIMEOUT ;
 scalar_t__ NFI_ADDRCNTR ;
 int NFI_CNFG ;
 int NFI_CON ;
 int NFI_INTR_EN ;
 int NFI_STRADDR ;
 int NFI_STRDATA ;
 int STAR_EN ;
 int dev_err (struct device*,char*) ;
 int dma_map_single (struct device*,void*,int,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int init_completion (int *) ;
 int lower_32_bits (int ) ;
 int msecs_to_jiffies (int) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 int nfi_readl (struct mtk_nfc*,int ) ;
 int nfi_readw (struct mtk_nfc*,int ) ;
 int nfi_writel (struct mtk_nfc*,int,int ) ;
 int nfi_writew (struct mtk_nfc*,int,int ) ;
 int readl_poll_timeout_atomic (scalar_t__,int,int,int,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int mtk_nfc_do_write_page(struct mtd_info *mtd, struct nand_chip *chip,
     const u8 *buf, int page, int len)
{
 struct mtk_nfc *nfc = nand_get_controller_data(chip);
 struct device *dev = nfc->dev;
 dma_addr_t addr;
 u32 reg;
 int ret;

 addr = dma_map_single(dev, (void *)buf, len, DMA_TO_DEVICE);
 ret = dma_mapping_error(nfc->dev, addr);
 if (ret) {
  dev_err(nfc->dev, "dma mapping error\n");
  return -EINVAL;
 }

 reg = nfi_readw(nfc, NFI_CNFG) | CNFG_AHB | CNFG_DMA_BURST_EN;
 nfi_writew(nfc, reg, NFI_CNFG);

 nfi_writel(nfc, chip->ecc.steps << CON_SEC_SHIFT, NFI_CON);
 nfi_writel(nfc, lower_32_bits(addr), NFI_STRADDR);
 nfi_writew(nfc, INTR_AHB_DONE_EN, NFI_INTR_EN);

 init_completion(&nfc->done);

 reg = nfi_readl(nfc, NFI_CON) | CON_BWR;
 nfi_writel(nfc, reg, NFI_CON);
 nfi_writew(nfc, STAR_EN, NFI_STRDATA);

 ret = wait_for_completion_timeout(&nfc->done, msecs_to_jiffies(500));
 if (!ret) {
  dev_err(dev, "program ahb done timeout\n");
  nfi_writew(nfc, 0, NFI_INTR_EN);
  ret = -ETIMEDOUT;
  goto timeout;
 }

 ret = readl_poll_timeout_atomic(nfc->regs + NFI_ADDRCNTR, reg,
     ADDRCNTR_SEC(reg) >= chip->ecc.steps,
     10, MTK_TIMEOUT);
 if (ret)
  dev_err(dev, "hwecc write timeout\n");

timeout:

 dma_unmap_single(nfc->dev, addr, len, DMA_TO_DEVICE);
 nfi_writel(nfc, 0, NFI_CON);

 return ret;
}
