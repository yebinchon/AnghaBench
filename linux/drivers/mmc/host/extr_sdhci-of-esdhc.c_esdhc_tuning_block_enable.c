
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int ESDHC_DMA_SYSCTL ;
 int ESDHC_FLUSH_ASYNC_FIFO ;
 int ESDHC_TBCTL ;
 int ESDHC_TB_EN ;
 int esdhc_clock_enable (struct sdhci_host*,int) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void esdhc_tuning_block_enable(struct sdhci_host *host, bool enable)
{
 u32 val;

 esdhc_clock_enable(host, 0);

 val = sdhci_readl(host, ESDHC_DMA_SYSCTL);
 val |= ESDHC_FLUSH_ASYNC_FIFO;
 sdhci_writel(host, val, ESDHC_DMA_SYSCTL);

 val = sdhci_readl(host, ESDHC_TBCTL);
 if (enable)
  val |= ESDHC_TB_EN;
 else
  val &= ~ESDHC_TB_EN;
 sdhci_writel(host, val, ESDHC_TBCTL);

 esdhc_clock_enable(host, 1);
}
