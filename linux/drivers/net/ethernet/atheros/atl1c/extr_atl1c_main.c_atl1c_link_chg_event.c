
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct net_device {int name; } ;
struct atl1c_adapter {int common_task; int work_event; int link_speed; int mdio_lock; int hw; struct pci_dev* pdev; struct net_device* netdev; } ;


 int ATL1C_WORK_EVENT_LINK_CHANGE ;
 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int SPEED_0 ;
 int atl1c_driver_name ;
 int atl1c_read_phy_reg (int *,int ,int*) ;
 int dev_info (int *,char*,int ,int ) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_msg_link (struct atl1c_adapter*) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void atl1c_link_chg_event(struct atl1c_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 u16 phy_data;
 u16 link_up;

 spin_lock(&adapter->mdio_lock);
 atl1c_read_phy_reg(&adapter->hw, MII_BMSR, &phy_data);
 atl1c_read_phy_reg(&adapter->hw, MII_BMSR, &phy_data);
 spin_unlock(&adapter->mdio_lock);
 link_up = phy_data & BMSR_LSTATUS;

 if (!link_up) {
  if (netif_carrier_ok(netdev)) {

   netif_carrier_off(netdev);
   if (netif_msg_link(adapter))
    dev_info(&pdev->dev,
     "%s: %s NIC Link is Down\n",
     atl1c_driver_name, netdev->name);
   adapter->link_speed = SPEED_0;
  }
 }

 set_bit(ATL1C_WORK_EVENT_LINK_CHANGE, &adapter->work_event);
 schedule_work(&adapter->common_task);
}
