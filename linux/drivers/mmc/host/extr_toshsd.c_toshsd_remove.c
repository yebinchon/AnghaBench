
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshsd_host {int mmc; int ioaddr; } ;
struct pci_dev {int irq; } ;


 int free_irq (int ,struct toshsd_host*) ;
 int mmc_free_host (int ) ;
 int mmc_remove_host (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct toshsd_host* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int toshsd_powerdown (struct toshsd_host*) ;

__attribute__((used)) static void toshsd_remove(struct pci_dev *pdev)
{
 struct toshsd_host *host = pci_get_drvdata(pdev);

 mmc_remove_host(host->mmc);
 toshsd_powerdown(host);
 free_irq(pdev->irq, host);
 pci_iounmap(pdev, host->ioaddr);
 pci_release_regions(pdev);
 mmc_free_host(host->mmc);
 pci_set_drvdata(pdev, ((void*)0));
 pci_disable_device(pdev);
}
