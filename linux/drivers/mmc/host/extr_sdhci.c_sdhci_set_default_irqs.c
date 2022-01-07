
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int ier; scalar_t__ tuning_mode; } ;


 int SDHCI_INT_BUS_POWER ;
 int SDHCI_INT_CRC ;
 int SDHCI_INT_DATA_CRC ;
 int SDHCI_INT_DATA_END ;
 int SDHCI_INT_DATA_END_BIT ;
 int SDHCI_INT_DATA_TIMEOUT ;
 int SDHCI_INT_ENABLE ;
 int SDHCI_INT_END_BIT ;
 int SDHCI_INT_INDEX ;
 int SDHCI_INT_RESPONSE ;
 int SDHCI_INT_RETUNE ;
 int SDHCI_INT_TIMEOUT ;
 int SDHCI_SIGNAL_ENABLE ;
 scalar_t__ SDHCI_TUNING_MODE_2 ;
 scalar_t__ SDHCI_TUNING_MODE_3 ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void sdhci_set_default_irqs(struct sdhci_host *host)
{
 host->ier = SDHCI_INT_BUS_POWER | SDHCI_INT_DATA_END_BIT |
      SDHCI_INT_DATA_CRC | SDHCI_INT_DATA_TIMEOUT |
      SDHCI_INT_INDEX | SDHCI_INT_END_BIT | SDHCI_INT_CRC |
      SDHCI_INT_TIMEOUT | SDHCI_INT_DATA_END |
      SDHCI_INT_RESPONSE;

 if (host->tuning_mode == SDHCI_TUNING_MODE_2 ||
     host->tuning_mode == SDHCI_TUNING_MODE_3)
  host->ier |= SDHCI_INT_RETUNE;

 sdhci_writel(host, host->ier, SDHCI_INT_ENABLE);
 sdhci_writel(host, host->ier, SDHCI_SIGNAL_ENABLE);
}
