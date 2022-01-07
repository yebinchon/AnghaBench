
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdricoh_host {int pci_dev; int iobase; } ;
struct pcmcia_device {int dev; struct mmc_host* priv; } ;
struct mmc_host {int dummy; } ;


 int dev_dbg (int *,char*) ;
 int mmc_free_host (struct mmc_host*) ;
 struct sdricoh_host* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 int pci_dev_put (int ) ;
 int pci_iounmap (int ,int ) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void sdricoh_pcmcia_detach(struct pcmcia_device *link)
{
 struct mmc_host *mmc = link->priv;

 dev_dbg(&link->dev, "detach\n");


 if (mmc) {
  struct sdricoh_host *host = mmc_priv(mmc);
  mmc_remove_host(mmc);
  pci_iounmap(host->pci_dev, host->iobase);
  pci_dev_put(host->pci_dev);
  mmc_free_host(mmc);
 }
 pcmcia_disable_device(link);

}
