
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int cqe_ier; int mmc; int cqe_on; } ;


 int EILSEQ ;
 int EIO ;
 int ETIMEDOUT ;
 int SDHCI_INT_ADMA_ERROR ;
 int SDHCI_INT_BUS_POWER ;
 int SDHCI_INT_CRC ;
 int SDHCI_INT_DATA_CRC ;
 int SDHCI_INT_DATA_END_BIT ;
 int SDHCI_INT_DATA_TIMEOUT ;
 int SDHCI_INT_END_BIT ;
 int SDHCI_INT_ERROR ;
 int SDHCI_INT_INDEX ;
 int SDHCI_INT_STATUS ;
 int SDHCI_INT_TIMEOUT ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ,...) ;
 int sdhci_dumpregs (struct sdhci_host*) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

bool sdhci_cqe_irq(struct sdhci_host *host, u32 intmask, int *cmd_error,
     int *data_error)
{
 u32 mask;

 if (!host->cqe_on)
  return 0;

 if (intmask & (SDHCI_INT_INDEX | SDHCI_INT_END_BIT | SDHCI_INT_CRC))
  *cmd_error = -EILSEQ;
 else if (intmask & SDHCI_INT_TIMEOUT)
  *cmd_error = -ETIMEDOUT;
 else
  *cmd_error = 0;

 if (intmask & (SDHCI_INT_DATA_END_BIT | SDHCI_INT_DATA_CRC))
  *data_error = -EILSEQ;
 else if (intmask & SDHCI_INT_DATA_TIMEOUT)
  *data_error = -ETIMEDOUT;
 else if (intmask & SDHCI_INT_ADMA_ERROR)
  *data_error = -EIO;
 else
  *data_error = 0;


 mask = intmask & host->cqe_ier;
 sdhci_writel(host, mask, SDHCI_INT_STATUS);

 if (intmask & SDHCI_INT_BUS_POWER)
  pr_err("%s: Card is consuming too much power!\n",
         mmc_hostname(host->mmc));

 intmask &= ~(host->cqe_ier | SDHCI_INT_ERROR);
 if (intmask) {
  sdhci_writel(host, intmask, SDHCI_INT_STATUS);
  pr_err("%s: CQE: Unexpected interrupt 0x%08x.\n",
         mmc_hostname(host->mmc), intmask);
  sdhci_dumpregs(host);
 }

 return 1;
}
