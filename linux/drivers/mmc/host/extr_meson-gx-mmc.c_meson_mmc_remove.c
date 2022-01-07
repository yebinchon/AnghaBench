
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct meson_host {int mmc; int core_clk; int mmc_clk; int bounce_dma_addr; int bounce_buf; int bounce_buf_size; int dev; int dram_access_quirk; int descs_dma_addr; int descs; int irq; scalar_t__ regs; } ;


 int SD_EMMC_DESC_BUF_LEN ;
 scalar_t__ SD_EMMC_IRQ_EN ;
 int clk_disable_unprepare (int ) ;
 struct meson_host* dev_get_drvdata (int *) ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int free_irq (int ,struct meson_host*) ;
 int mmc_free_host (int ) ;
 int mmc_remove_host (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int meson_mmc_remove(struct platform_device *pdev)
{
 struct meson_host *host = dev_get_drvdata(&pdev->dev);

 mmc_remove_host(host->mmc);


 writel(0, host->regs + SD_EMMC_IRQ_EN);
 free_irq(host->irq, host);

 dma_free_coherent(host->dev, SD_EMMC_DESC_BUF_LEN,
     host->descs, host->descs_dma_addr);

 if (!host->dram_access_quirk)
  dma_free_coherent(host->dev, host->bounce_buf_size,
      host->bounce_buf, host->bounce_dma_addr);

 clk_disable_unprepare(host->mmc_clk);
 clk_disable_unprepare(host->core_clk);

 mmc_free_host(host->mmc);
 return 0;
}
