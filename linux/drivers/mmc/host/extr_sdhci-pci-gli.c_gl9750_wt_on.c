
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdhci_host {int dummy; } ;


 scalar_t__ FIELD_GET (scalar_t__,scalar_t__) ;
 scalar_t__ FIELD_PREP (scalar_t__,scalar_t__) ;
 scalar_t__ GLI_9750_WT_EN_ON ;
 int SDHCI_GLI_9750_WT ;
 scalar_t__ SDHCI_GLI_9750_WT_EN ;
 scalar_t__ sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,scalar_t__,int ) ;

__attribute__((used)) static inline void gl9750_wt_on(struct sdhci_host *host)
{
 u32 wt_value;
 u32 wt_enable;

 wt_value = sdhci_readl(host, SDHCI_GLI_9750_WT);
 wt_enable = FIELD_GET(SDHCI_GLI_9750_WT_EN, wt_value);

 if (wt_enable == GLI_9750_WT_EN_ON)
  return;

 wt_value &= ~SDHCI_GLI_9750_WT_EN;
 wt_value |= FIELD_PREP(SDHCI_GLI_9750_WT_EN, GLI_9750_WT_EN_ON);

 sdhci_writel(host, wt_value, SDHCI_GLI_9750_WT);
}
