
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct igc_adapter {int shadow_vfta; int mac_table; int io_addr; int watchdog_task; int reset_task; int phy_info_timer; int watchdog_timer; int state; } ;


 int __IGC_DOWN ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int igc_clear_interrupt_scheme (struct igc_adapter*) ;
 int igc_release_hw_control (struct igc_adapter*) ;
 int kfree (int ) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int set_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void igc_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct igc_adapter *adapter = netdev_priv(netdev);

 set_bit(__IGC_DOWN, &adapter->state);

 del_timer_sync(&adapter->watchdog_timer);
 del_timer_sync(&adapter->phy_info_timer);

 cancel_work_sync(&adapter->reset_task);
 cancel_work_sync(&adapter->watchdog_task);




 igc_release_hw_control(adapter);
 unregister_netdev(netdev);

 igc_clear_interrupt_scheme(adapter);
 pci_iounmap(pdev, adapter->io_addr);
 pci_release_mem_regions(pdev);

 kfree(adapter->mac_table);
 kfree(adapter->shadow_vfta);
 free_netdev(netdev);

 pci_disable_pcie_error_reporting(pdev);

 pci_disable_device(pdev);
}
