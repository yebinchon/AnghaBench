
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct e1000_hw {scalar_t__ flash_address; } ;
struct igb_adapter {int flags; int shadow_vfta; int mac_table; int io_addr; int watchdog_task; int reset_task; int phy_info_timer; int watchdog_timer; int state; struct e1000_hw hw; } ;


 int E1000_DCA_CTRL ;
 int E1000_DCA_CTRL_DCA_MODE_DISABLE ;
 int IGB_FLAG_DCA_ENABLED ;
 int __IGB_DOWN ;
 int cancel_work_sync (int *) ;
 int dca_remove_requester (int *) ;
 int del_timer_sync (int *) ;
 int dev_info (int *,char*) ;
 int free_netdev (struct net_device*) ;
 int igb_clear_interrupt_scheme (struct igb_adapter*) ;
 int igb_disable_sriov (struct pci_dev*) ;
 int igb_ptp_stop (struct igb_adapter*) ;
 int igb_release_hw_control (struct igb_adapter*) ;
 int igb_remove_i2c (struct igb_adapter*) ;
 int igb_sysfs_exit (struct igb_adapter*) ;
 int iounmap (scalar_t__) ;
 int kfree (int ) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int pm_runtime_get_noresume (int *) ;
 int set_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static void igb_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 pm_runtime_get_noresume(&pdev->dev);



 igb_remove_i2c(adapter);
 igb_ptp_stop(adapter);



 set_bit(__IGB_DOWN, &adapter->state);
 del_timer_sync(&adapter->watchdog_timer);
 del_timer_sync(&adapter->phy_info_timer);

 cancel_work_sync(&adapter->reset_task);
 cancel_work_sync(&adapter->watchdog_task);
 igb_release_hw_control(adapter);





 unregister_netdev(netdev);

 igb_clear_interrupt_scheme(adapter);

 pci_iounmap(pdev, adapter->io_addr);
 if (hw->flash_address)
  iounmap(hw->flash_address);
 pci_release_mem_regions(pdev);

 kfree(adapter->mac_table);
 kfree(adapter->shadow_vfta);
 free_netdev(netdev);

 pci_disable_pcie_error_reporting(pdev);

 pci_disable_device(pdev);
}
