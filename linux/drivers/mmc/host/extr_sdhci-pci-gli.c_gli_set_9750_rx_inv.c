
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int FIELD_PREP (int ,int ) ;
 int GLI_9750_MISC_RX_INV_OFF ;
 int GLI_9750_MISC_RX_INV_ON ;
 int SDHCI_GLI_9750_MISC ;
 int SDHCI_GLI_9750_MISC_RX_INV ;
 int gl9750_wt_off (struct sdhci_host*) ;
 int gl9750_wt_on (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void gli_set_9750_rx_inv(struct sdhci_host *host, bool b)
{
 u32 misc_value;

 gl9750_wt_on(host);

 misc_value = sdhci_readl(host, SDHCI_GLI_9750_MISC);
 misc_value &= ~SDHCI_GLI_9750_MISC_RX_INV;
 if (b) {
  misc_value |= FIELD_PREP(SDHCI_GLI_9750_MISC_RX_INV,
      GLI_9750_MISC_RX_INV_ON);
 } else {
  misc_value |= FIELD_PREP(SDHCI_GLI_9750_MISC_RX_INV,
      GLI_9750_MISC_RX_INV_OFF);
 }
 sdhci_writel(host, misc_value, SDHCI_GLI_9750_MISC);

 gl9750_wt_off(host);
}
