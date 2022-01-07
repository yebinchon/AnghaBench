
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct atl1_hw {int media_type; } ;
struct atl1_adapter {struct atl1_hw hw; } ;


 int MEDIA_TYPE_1000M_FULL ;



 int MEDIA_TYPE_AUTO_SENSOR ;
 int MII_BMCR ;
 int MII_CR_AUTO_NEG_EN ;
 int MII_CR_FULL_DUPLEX ;
 int MII_CR_RESET ;
 int MII_CR_SPEED_10 ;
 int MII_CR_SPEED_100 ;
 int atl1_down (struct atl1_adapter*) ;
 int atl1_up (struct atl1_adapter*) ;
 int atl1_write_phy_reg (struct atl1_hw*,int ,int) ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int atl1_nway_reset(struct net_device *netdev)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);
 struct atl1_hw *hw = &adapter->hw;

 if (netif_running(netdev)) {
  u16 phy_data;
  atl1_down(adapter);

  if (hw->media_type == MEDIA_TYPE_AUTO_SENSOR ||
   hw->media_type == MEDIA_TYPE_1000M_FULL) {
   phy_data = MII_CR_RESET | MII_CR_AUTO_NEG_EN;
  } else {
   switch (hw->media_type) {
   case 130:
    phy_data = MII_CR_FULL_DUPLEX |
     MII_CR_SPEED_100 | MII_CR_RESET;
    break;
   case 129:
    phy_data = MII_CR_SPEED_100 | MII_CR_RESET;
    break;
   case 128:
    phy_data = MII_CR_FULL_DUPLEX |
     MII_CR_SPEED_10 | MII_CR_RESET;
    break;
   default:

    phy_data = MII_CR_SPEED_10 | MII_CR_RESET;
   }
  }
  atl1_write_phy_reg(hw, MII_BMCR, phy_data);
  atl1_up(adapter);
 }
 return 0;
}
