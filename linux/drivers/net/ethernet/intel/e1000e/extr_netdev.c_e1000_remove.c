
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ flash_address; TYPE_1__ mac; scalar_t__ hw_addr; } ;
struct e1000_adapter {int flags; TYPE_2__ hw; int rx_ring; int tx_ring; int state; int * tx_hwtstamp_skb; int tx_hwtstamp_work; int e1000_workqueue; int watchdog_task; int print_hang_task; int update_phy_task; int downshift_task; int reset_task; int phy_info_timer; } ;


 int FLAG_HAS_HW_TIMESTAMP ;
 int __E1000_DOWN ;
 int cancel_delayed_work (int *) ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int destroy_workqueue (int ) ;
 int dev_consume_skb_any (int *) ;
 scalar_t__ e1000_pch_spt ;
 int e1000e_ptp_remove (struct e1000_adapter*) ;
 int e1000e_release_hw_control (struct e1000_adapter*) ;
 int e1000e_reset_interrupt_capability (struct e1000_adapter*) ;
 int flush_workqueue (int ) ;
 int free_netdev (struct net_device*) ;
 int iounmap (scalar_t__) ;
 int kfree (int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ pci_dev_run_wake (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int pm_runtime_get_noresume (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void e1000_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct e1000_adapter *adapter = netdev_priv(netdev);
 bool down = test_bit(__E1000_DOWN, &adapter->state);

 e1000e_ptp_remove(adapter);




 if (!down)
  set_bit(__E1000_DOWN, &adapter->state);
 del_timer_sync(&adapter->phy_info_timer);

 cancel_work_sync(&adapter->reset_task);
 cancel_work_sync(&adapter->downshift_task);
 cancel_work_sync(&adapter->update_phy_task);
 cancel_work_sync(&adapter->print_hang_task);

 cancel_delayed_work(&adapter->watchdog_task);
 flush_workqueue(adapter->e1000_workqueue);
 destroy_workqueue(adapter->e1000_workqueue);

 if (adapter->flags & FLAG_HAS_HW_TIMESTAMP) {
  cancel_work_sync(&adapter->tx_hwtstamp_work);
  if (adapter->tx_hwtstamp_skb) {
   dev_consume_skb_any(adapter->tx_hwtstamp_skb);
   adapter->tx_hwtstamp_skb = ((void*)0);
  }
 }


 if (!down)
  clear_bit(__E1000_DOWN, &adapter->state);
 unregister_netdev(netdev);

 if (pci_dev_run_wake(pdev))
  pm_runtime_get_noresume(&pdev->dev);




 e1000e_release_hw_control(adapter);

 e1000e_reset_interrupt_capability(adapter);
 kfree(adapter->tx_ring);
 kfree(adapter->rx_ring);

 iounmap(adapter->hw.hw_addr);
 if ((adapter->hw.flash_address) &&
     (adapter->hw.mac.type < e1000_pch_spt))
  iounmap(adapter->hw.flash_address);
 pci_release_mem_regions(pdev);

 free_netdev(netdev);


 pci_disable_pcie_error_reporting(pdev);

 pci_disable_device(pdev);
}
