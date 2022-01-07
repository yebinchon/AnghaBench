
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct lpc32xx_nand_host {TYPE_1__* ncfg; int clk; int dma_chan; int irq; int nand_chip; } ;
struct TYPE_2__ {int wp_gpio; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int dma_release_channel (int ) ;
 int free_irq (int ,struct lpc32xx_nand_host*) ;
 int gpio_free (int ) ;
 int lpc32xx_wp_enable (struct lpc32xx_nand_host*) ;
 int nand_release (int *) ;
 struct lpc32xx_nand_host* platform_get_drvdata (struct platform_device*) ;
 scalar_t__ use_dma ;

__attribute__((used)) static int lpc32xx_nand_remove(struct platform_device *pdev)
{
 struct lpc32xx_nand_host *host = platform_get_drvdata(pdev);

 nand_release(&host->nand_chip);
 free_irq(host->irq, host);
 if (use_dma)
  dma_release_channel(host->dma_chan);

 clk_disable_unprepare(host->clk);
 clk_put(host->clk);

 lpc32xx_wp_enable(host);
 gpio_free(host->ncfg->wp_gpio);

 return 0;
}
