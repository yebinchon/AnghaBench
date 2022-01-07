
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_sprd_host {int base_rate; } ;
struct sdhci_host {int dummy; } ;


 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_SPRD_BIT_INNR_CLK_AUTO_EN ;
 int SDHCI_SPRD_BIT_OUTR_CLK_AUTO_EN ;
 int SDHCI_SPRD_REG_32_BUSY_POSI ;
 struct sdhci_sprd_host* TO_SPRD_HOST (struct sdhci_host*) ;
 int sdhci_enable_clk (struct sdhci_host*,int) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_sprd_calc_div (int ,unsigned int) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static inline void _sdhci_sprd_set_clock(struct sdhci_host *host,
     unsigned int clk)
{
 struct sdhci_sprd_host *sprd_host = TO_SPRD_HOST(host);
 u32 div, val, mask;

 sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);

 div = sdhci_sprd_calc_div(sprd_host->base_rate, clk);
 div = ((div & 0x300) >> 2) | ((div & 0xFF) << 8);
 sdhci_enable_clk(host, div);


 val = sdhci_readl(host, SDHCI_SPRD_REG_32_BUSY_POSI);
 mask = SDHCI_SPRD_BIT_OUTR_CLK_AUTO_EN |
        SDHCI_SPRD_BIT_INNR_CLK_AUTO_EN;
 if (mask != (val & mask)) {
  val |= mask;
  sdhci_writel(host, val, SDHCI_SPRD_REG_32_BUSY_POSI);
 }
}
