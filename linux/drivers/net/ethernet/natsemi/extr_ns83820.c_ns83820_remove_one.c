
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_4__ {int phy_descs; int descs; } ;
struct ns83820 {TYPE_2__* pci_dev; TYPE_1__ rx_info; int tx_phy_descs; int tx_descs; int base; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int irq; } ;


 int DESC_SIZE ;
 int NR_RX_DESC ;
 int NR_TX_DESC ;
 struct ns83820* PRIV (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 int ns83820_disable_interrupts (struct ns83820*) ;
 int pci_disable_device (TYPE_2__*) ;
 int pci_free_consistent (TYPE_2__*,int,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ns83820_remove_one(struct pci_dev *pci_dev)
{
 struct net_device *ndev = pci_get_drvdata(pci_dev);
 struct ns83820 *dev = PRIV(ndev);

 if (!ndev)
  return;

 ns83820_disable_interrupts(dev);

 unregister_netdev(ndev);
 free_irq(dev->pci_dev->irq, ndev);
 iounmap(dev->base);
 pci_free_consistent(dev->pci_dev, 4 * DESC_SIZE * NR_TX_DESC,
   dev->tx_descs, dev->tx_phy_descs);
 pci_free_consistent(dev->pci_dev, 4 * DESC_SIZE * NR_RX_DESC,
   dev->rx_info.descs, dev->rx_info.phy_descs);
 pci_disable_device(dev->pci_dev);
 free_netdev(ndev);
}
