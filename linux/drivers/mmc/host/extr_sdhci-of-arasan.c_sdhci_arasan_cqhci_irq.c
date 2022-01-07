
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int mmc; } ;


 int cqhci_irq (int ,int ,int,int) ;
 int sdhci_cqe_irq (struct sdhci_host*,int ,int*,int*) ;

__attribute__((used)) static u32 sdhci_arasan_cqhci_irq(struct sdhci_host *host, u32 intmask)
{
 int cmd_error = 0;
 int data_error = 0;

 if (!sdhci_cqe_irq(host, intmask, &cmd_error, &data_error))
  return intmask;

 cqhci_irq(host->mmc, intmask, cmd_error, data_error);

 return 0;
}
