
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wmt_mci_priv {int clk_sdmmc; scalar_t__ sdmmc_base; int irq_dma; int irq_regular; int dma_desc_device_addr; int dma_desc_buffer; TYPE_1__* mmc; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int max_blk_count; } ;


 int BM_SOFT_RESET ;
 int IORESOURCE_MEM ;
 scalar_t__ SDMMC_BLKLEN ;
 scalar_t__ SDMMC_BUSMODE ;
 scalar_t__ SDMMC_STS0 ;
 scalar_t__ SDMMC_STS1 ;
 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int dev_info (int *,char*) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int free_irq (int ,struct wmt_mci_priv*) ;
 int iounmap (scalar_t__) ;
 int mmc_free_host (struct mmc_host*) ;
 struct wmt_mci_priv* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 struct mmc_host* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int readb (scalar_t__) ;
 int readw (scalar_t__) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int writeb (int,scalar_t__) ;
 int writel (int,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int wmt_mci_remove(struct platform_device *pdev)
{
 struct mmc_host *mmc;
 struct wmt_mci_priv *priv;
 struct resource *res;
 u32 reg_tmp;

 mmc = platform_get_drvdata(pdev);
 priv = mmc_priv(mmc);


 reg_tmp = readb(priv->sdmmc_base + SDMMC_BUSMODE);
 writel(reg_tmp | BM_SOFT_RESET, priv->sdmmc_base + SDMMC_BUSMODE);
 reg_tmp = readw(priv->sdmmc_base + SDMMC_BLKLEN);
 writew(reg_tmp & ~(0xA000), priv->sdmmc_base + SDMMC_BLKLEN);
 writeb(0xFF, priv->sdmmc_base + SDMMC_STS0);
 writeb(0xFF, priv->sdmmc_base + SDMMC_STS1);


 dma_free_coherent(&pdev->dev, priv->mmc->max_blk_count * 16,
     priv->dma_desc_buffer, priv->dma_desc_device_addr);

 mmc_remove_host(mmc);

 free_irq(priv->irq_regular, priv);
 free_irq(priv->irq_dma, priv);

 iounmap(priv->sdmmc_base);

 clk_disable_unprepare(priv->clk_sdmmc);
 clk_put(priv->clk_sdmmc);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, resource_size(res));

 mmc_free_host(mmc);

 dev_info(&pdev->dev, "WMT MCI device removed\n");

 return 0;
}
