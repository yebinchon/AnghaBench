
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdhci_host {int dummy; } ;


 scalar_t__ MMC_WRITE_MULTIPLE_BLOCK ;
 int SDHCI_BLOCK_COUNT ;
 int SDHCI_COMMAND ;
 scalar_t__ SDHCI_GET_CMD (scalar_t__) ;
 scalar_t__ SDHCI_INT_DATA_END ;
 int SDHCI_INT_STATUS ;
 scalar_t__ of_find_compatible_node (int *,int *,char*) ;
 scalar_t__ sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,scalar_t__,int ) ;

__attribute__((used)) static u32 esdhc_irq(struct sdhci_host *host, u32 intmask)
{
 u32 command;

 if (of_find_compatible_node(((void*)0), ((void*)0),
    "fsl,p2020-esdhc")) {
  command = SDHCI_GET_CMD(sdhci_readw(host,
     SDHCI_COMMAND));
  if (command == MMC_WRITE_MULTIPLE_BLOCK &&
    sdhci_readw(host, SDHCI_BLOCK_COUNT) &&
    intmask & SDHCI_INT_DATA_END) {
   intmask &= ~SDHCI_INT_DATA_END;
   sdhci_writel(host, SDHCI_INT_DATA_END,
     SDHCI_INT_STATUS);
  }
 }
 return intmask;
}
