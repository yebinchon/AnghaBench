
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct platform_device {int dummy; } ;
struct lpc32xx_nand_host {int clk; int io_base; int dma_chan; int nand_chip; } ;


 int SLCCFG_CE_LOW ;
 int SLC_CTRL (int ) ;
 int clk_disable_unprepare (int ) ;
 int dma_release_channel (int ) ;
 int lpc32xx_wp_enable (struct lpc32xx_nand_host*) ;
 int nand_release (int *) ;
 struct lpc32xx_nand_host* platform_get_drvdata (struct platform_device*) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static int lpc32xx_nand_remove(struct platform_device *pdev)
{
 uint32_t tmp;
 struct lpc32xx_nand_host *host = platform_get_drvdata(pdev);

 nand_release(&host->nand_chip);
 dma_release_channel(host->dma_chan);


 tmp = readl(SLC_CTRL(host->io_base));
 tmp &= ~SLCCFG_CE_LOW;
 writel(tmp, SLC_CTRL(host->io_base));

 clk_disable_unprepare(host->clk);
 lpc32xx_wp_enable(host);

 return 0;
}
