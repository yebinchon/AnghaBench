
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int hw_addr; } ;
struct ixgb_adapter {TYPE_1__ hw; int tx_timeout_task; } ;


 int cancel_work_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void
ixgb_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct ixgb_adapter *adapter = netdev_priv(netdev);

 cancel_work_sync(&adapter->tx_timeout_task);

 unregister_netdev(netdev);

 iounmap(adapter->hw.hw_addr);
 pci_release_regions(pdev);

 free_netdev(netdev);
 pci_disable_device(pdev);
}
