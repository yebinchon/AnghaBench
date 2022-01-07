
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxamci_host {int dummy; } ;
struct mmc_host {int dummy; } ;


 int SDIO_INT ;
 struct pxamci_host* mmc_priv (struct mmc_host*) ;
 int pxamci_disable_irq (struct pxamci_host*,int ) ;
 int pxamci_enable_irq (struct pxamci_host*,int ) ;

__attribute__((used)) static void pxamci_enable_sdio_irq(struct mmc_host *host, int enable)
{
 struct pxamci_host *pxa_host = mmc_priv(host);

 if (enable)
  pxamci_enable_irq(pxa_host, SDIO_INT);
 else
  pxamci_disable_irq(pxa_host, SDIO_INT);
}
