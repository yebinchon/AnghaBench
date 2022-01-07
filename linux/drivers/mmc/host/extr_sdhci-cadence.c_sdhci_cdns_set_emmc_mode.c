
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_cdns_priv {scalar_t__ hrs_addr; } ;


 int FIELD_PREP (int ,int ) ;
 scalar_t__ SDHCI_CDNS_HRS06 ;
 int SDHCI_CDNS_HRS06_MODE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sdhci_cdns_set_emmc_mode(struct sdhci_cdns_priv *priv, u32 mode)
{
 u32 tmp;


 tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS06);
 tmp &= ~SDHCI_CDNS_HRS06_MODE;
 tmp |= FIELD_PREP(SDHCI_CDNS_HRS06_MODE, mode);
 writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS06);
}
