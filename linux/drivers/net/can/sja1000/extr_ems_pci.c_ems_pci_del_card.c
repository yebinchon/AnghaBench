
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int name; } ;
struct ems_pci_card {int channels; int * conf_addr; int pci_dev; int * base_addr; struct net_device** net_dev; } ;


 int dev_info (int *,char*,int ) ;
 int free_sja1000dev (struct net_device*) ;
 int kfree (struct ems_pci_card*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ems_pci_card* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (int ,int *) ;
 int unregister_sja1000dev (struct net_device*) ;

__attribute__((used)) static void ems_pci_del_card(struct pci_dev *pdev)
{
 struct ems_pci_card *card = pci_get_drvdata(pdev);
 struct net_device *dev;
 int i = 0;

 for (i = 0; i < card->channels; i++) {
  dev = card->net_dev[i];

  if (!dev)
   continue;

  dev_info(&pdev->dev, "Removing %s.\n", dev->name);
  unregister_sja1000dev(dev);
  free_sja1000dev(dev);
 }

 if (card->base_addr != ((void*)0))
  pci_iounmap(card->pci_dev, card->base_addr);

 if (card->conf_addr != ((void*)0))
  pci_iounmap(card->pci_dev, card->conf_addr);

 kfree(card);

 pci_disable_device(pdev);
}
