
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct igb_adapter {int state; struct pci_dev* pdev; } ;


 int WARN_ON (int ) ;
 int __IGB_RESETTING ;
 int igb_down (struct igb_adapter*) ;
 int igb_free_all_rx_resources (struct igb_adapter*) ;
 int igb_free_all_tx_resources (struct igb_adapter*) ;
 int igb_free_irq (struct igb_adapter*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int __igb_close(struct net_device *netdev, bool suspending)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct pci_dev *pdev = adapter->pdev;

 WARN_ON(test_bit(__IGB_RESETTING, &adapter->state));

 if (!suspending)
  pm_runtime_get_sync(&pdev->dev);

 igb_down(adapter);
 igb_free_irq(adapter);

 igb_free_all_tx_resources(adapter);
 igb_free_all_rx_resources(adapter);

 if (!suspending)
  pm_runtime_put_sync(&pdev->dev);
 return 0;
}
