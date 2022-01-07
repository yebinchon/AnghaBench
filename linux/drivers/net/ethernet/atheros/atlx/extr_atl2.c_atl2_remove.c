
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int hw_addr; } ;
struct atl2_adapter {TYPE_1__ hw; int link_chg_task; int reset_task; int phy_config_timer; int watchdog_timer; int flags; } ;


 int __ATL2_DOWN ;
 int atl2_force_ps (TYPE_1__*) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct atl2_adapter* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int set_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void atl2_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct atl2_adapter *adapter = netdev_priv(netdev);



 set_bit(__ATL2_DOWN, &adapter->flags);

 del_timer_sync(&adapter->watchdog_timer);
 del_timer_sync(&adapter->phy_config_timer);
 cancel_work_sync(&adapter->reset_task);
 cancel_work_sync(&adapter->link_chg_task);

 unregister_netdev(netdev);

 atl2_force_ps(&adapter->hw);

 iounmap(adapter->hw.hw_addr);
 pci_release_regions(pdev);

 free_netdev(netdev);

 pci_disable_device(pdev);
}
