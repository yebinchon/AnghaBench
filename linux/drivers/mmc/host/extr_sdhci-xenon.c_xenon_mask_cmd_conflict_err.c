
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int XENON_MASK_CMD_CONFLICT_ERR ;
 int XENON_SYS_EXT_OP_CTRL ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void xenon_mask_cmd_conflict_err(struct sdhci_host *host)
{
 u32 reg;

 reg = sdhci_readl(host, XENON_SYS_EXT_OP_CTRL);
 reg |= XENON_MASK_CMD_CONFLICT_ERR;
 sdhci_writel(host, reg, XENON_SYS_EXT_OP_CTRL);
}
