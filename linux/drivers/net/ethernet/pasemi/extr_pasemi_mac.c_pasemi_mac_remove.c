
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct pasemi_mac {TYPE_2__* rx; TYPE_1__* tx; int iob_pdev; int dma_pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int chan; } ;
struct TYPE_3__ {int chan; } ;


 int free_netdev (struct net_device*) ;
 struct pasemi_mac* netdev_priv (struct net_device*) ;
 int pasemi_dma_free_chan (int *) ;
 int pci_dev_put (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void pasemi_mac_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct pasemi_mac *mac;

 if (!netdev)
  return;

 mac = netdev_priv(netdev);

 unregister_netdev(netdev);

 pci_disable_device(pdev);
 pci_dev_put(mac->dma_pdev);
 pci_dev_put(mac->iob_pdev);

 pasemi_dma_free_chan(&mac->tx->chan);
 pasemi_dma_free_chan(&mac->rx->chan);

 free_netdev(netdev);
}
