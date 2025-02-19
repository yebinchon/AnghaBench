
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_card {int netdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int EIO ;
 int free_netdev (int ) ;
 int spider_net_init_card (struct spider_net_card*) ;
 int spider_net_setup_netdev (struct spider_net_card*) ;
 struct spider_net_card* spider_net_setup_pci_dev (struct pci_dev*) ;
 int spider_net_setup_phy (struct spider_net_card*) ;
 int spider_net_undo_pci_setup (struct spider_net_card*) ;
 int spider_net_workaround_rxramfull (struct spider_net_card*) ;

__attribute__((used)) static int
spider_net_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int err = -EIO;
 struct spider_net_card *card;

 card = spider_net_setup_pci_dev(pdev);
 if (!card)
  goto out;

 spider_net_workaround_rxramfull(card);
 spider_net_init_card(card);

 err = spider_net_setup_phy(card);
 if (err)
  goto out_undo_pci;

 err = spider_net_setup_netdev(card);
 if (err)
  goto out_undo_pci;

 return 0;

out_undo_pci:
 spider_net_undo_pci_setup(card);
 free_netdev(card->netdev);
out:
 return err;
}
