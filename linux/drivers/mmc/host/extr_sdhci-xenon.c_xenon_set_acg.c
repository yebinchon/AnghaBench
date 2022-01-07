
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int XENON_AUTO_CLKGATE_DISABLE_MASK ;
 int XENON_SYS_OP_CTRL ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void xenon_set_acg(struct sdhci_host *host, bool enable)
{
 u32 reg;

 reg = sdhci_readl(host, XENON_SYS_OP_CTRL);
 if (enable)
  reg &= ~XENON_AUTO_CLKGATE_DISABLE_MASK;
 else
  reg |= XENON_AUTO_CLKGATE_DISABLE_MASK;
 sdhci_writel(host, reg, XENON_SYS_OP_CTRL);
}
