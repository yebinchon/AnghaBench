
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int BIT (unsigned char) ;
 int XENON_SLOT_ENABLE_SHIFT ;
 int XENON_SYS_OP_CTRL ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void xenon_disable_sdhc(struct sdhci_host *host,
          unsigned char sdhc_id)
{
 u32 reg;

 reg = sdhci_readl(host, XENON_SYS_OP_CTRL);
 reg &= ~(BIT(sdhc_id) << XENON_SLOT_ENABLE_SHIFT);
 sdhci_writel(host, reg, XENON_SYS_OP_CTRL);
}
