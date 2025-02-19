
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct platform_device {int dummy; } ;


 int SDH_SHARED_BUS_CLK_PINS ;
 scalar_t__ SDH_SHARED_BUS_CTRL ;
 int SDH_SHARED_BUS_IRQ_PINS ;
 int SDH_SHARED_BUS_NR_CLK_PINS_MASK ;
 int SDH_SHARED_BUS_NR_IRQ_PINS_MASK ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void pic32_sdhci_shared_bus(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);
 u32 bus = readl(host->ioaddr + SDH_SHARED_BUS_CTRL);
 u32 clk_pins = (bus & SDH_SHARED_BUS_NR_CLK_PINS_MASK) >> 0;
 u32 irq_pins = (bus & SDH_SHARED_BUS_NR_IRQ_PINS_MASK) >> 4;


 if (clk_pins & 1)
  bus |= (1 << SDH_SHARED_BUS_CLK_PINS);


 if (irq_pins & 1)
  bus |= (1 << SDH_SHARED_BUS_IRQ_PINS);

 writel(bus, host->ioaddr + SDH_SHARED_BUS_CTRL);
}
