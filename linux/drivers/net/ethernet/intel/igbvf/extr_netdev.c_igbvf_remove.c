
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct e1000_hw {scalar_t__ flash_address; scalar_t__ hw_addr; } ;
struct igbvf_adapter {TYPE_1__* rx_ring; TYPE_1__* tx_ring; int watchdog_task; int reset_task; int watchdog_timer; int state; struct e1000_hw hw; } ;
struct TYPE_2__ {int napi; } ;


 int __IGBVF_DOWN ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int igbvf_reset_interrupt_capability (struct igbvf_adapter*) ;
 int iounmap (scalar_t__) ;
 int kfree (TYPE_1__*) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int set_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void igbvf_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;




 set_bit(__IGBVF_DOWN, &adapter->state);
 del_timer_sync(&adapter->watchdog_timer);

 cancel_work_sync(&adapter->reset_task);
 cancel_work_sync(&adapter->watchdog_task);

 unregister_netdev(netdev);

 igbvf_reset_interrupt_capability(adapter);




 netif_napi_del(&adapter->rx_ring->napi);
 kfree(adapter->tx_ring);
 kfree(adapter->rx_ring);

 iounmap(hw->hw_addr);
 if (hw->flash_address)
  iounmap(hw->flash_address);
 pci_release_regions(pdev);

 free_netdev(netdev);

 pci_disable_device(pdev);
}
