
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct pci_dev {int dev; } ;
struct net_device {int name; } ;
struct atl1c_hw {int hibernate; } ;
struct atl1c_adapter {scalar_t__ link_speed; scalar_t__ link_duplex; int mdio_lock; struct pci_dev* pdev; struct net_device* netdev; struct atl1c_hw hw; } ;


 scalar_t__ BMSR_LSTATUS ;
 scalar_t__ FULL_DUPLEX ;
 int MII_BMSR ;
 scalar_t__ SPEED_0 ;
 int atl1c_configure (struct atl1c_adapter*) ;
 int atl1c_driver_name ;
 int atl1c_get_speed_and_duplex (struct atl1c_hw*,scalar_t__*,scalar_t__*) ;
 int atl1c_post_phy_linkchg (struct atl1c_hw*,scalar_t__) ;
 int atl1c_read_phy_reg (struct atl1c_hw*,int ,scalar_t__*) ;
 int atl1c_reset_dma_ring (struct atl1c_adapter*) ;
 scalar_t__ atl1c_reset_mac (struct atl1c_hw*) ;
 int atl1c_set_aspm (struct atl1c_hw*,scalar_t__) ;
 int atl1c_start_mac (struct atl1c_adapter*) ;
 int dev_info (int *,char*,int ,int ,scalar_t__,char*) ;
 int dev_warn (int *,char*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ netif_msg_hw (struct atl1c_adapter*) ;
 scalar_t__ netif_msg_link (struct atl1c_adapter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void atl1c_check_link_status(struct atl1c_adapter *adapter)
{
 struct atl1c_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 int err;
 unsigned long flags;
 u16 speed, duplex, phy_data;

 spin_lock_irqsave(&adapter->mdio_lock, flags);

 atl1c_read_phy_reg(hw, MII_BMSR, &phy_data);
 atl1c_read_phy_reg(hw, MII_BMSR, &phy_data);
 spin_unlock_irqrestore(&adapter->mdio_lock, flags);

 if ((phy_data & BMSR_LSTATUS) == 0) {

  netif_carrier_off(netdev);
  hw->hibernate = 1;
  if (atl1c_reset_mac(hw) != 0)
   if (netif_msg_hw(adapter))
    dev_warn(&pdev->dev, "reset mac failed\n");
  atl1c_set_aspm(hw, SPEED_0);
  atl1c_post_phy_linkchg(hw, SPEED_0);
  atl1c_reset_dma_ring(adapter);
  atl1c_configure(adapter);
 } else {

  hw->hibernate = 0;
  spin_lock_irqsave(&adapter->mdio_lock, flags);
  err = atl1c_get_speed_and_duplex(hw, &speed, &duplex);
  spin_unlock_irqrestore(&adapter->mdio_lock, flags);
  if (unlikely(err))
   return;

  if (adapter->link_speed != speed ||
      adapter->link_duplex != duplex) {
   adapter->link_speed = speed;
   adapter->link_duplex = duplex;
   atl1c_set_aspm(hw, speed);
   atl1c_post_phy_linkchg(hw, speed);
   atl1c_start_mac(adapter);
   if (netif_msg_link(adapter))
    dev_info(&pdev->dev,
     "%s: %s NIC Link is Up<%d Mbps %s>\n",
     atl1c_driver_name, netdev->name,
     adapter->link_speed,
     adapter->link_duplex == FULL_DUPLEX ?
     "Full Duplex" : "Half Duplex");
  }
  if (!netif_carrier_ok(netdev))
   netif_carrier_on(netdev);
 }
}
