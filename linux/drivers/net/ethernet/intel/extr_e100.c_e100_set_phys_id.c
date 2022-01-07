
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int phy_id; } ;
struct nic {scalar_t__ phy; TYPE_1__ mii; int mac; } ;
struct net_device {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int E100_82552_LED_OFF ;
 int E100_82552_LED_ON ;
 int E100_82552_LED_OVERRIDE ;




 int MII_LED_CONTROL ;
 int mac_82559_D101M ;
 int mdio_write (struct net_device*,int ,int,int) ;
 struct nic* netdev_priv (struct net_device*) ;
 scalar_t__ phy_82552_v ;

__attribute__((used)) static int e100_set_phys_id(struct net_device *netdev,
       enum ethtool_phys_id_state state)
{
 struct nic *nic = netdev_priv(netdev);
 enum led_state {
  led_on = 0x01,
  led_off = 0x04,
  led_on_559 = 0x05,
  led_on_557 = 0x07,
 };
 u16 led_reg = (nic->phy == phy_82552_v) ? E100_82552_LED_OVERRIDE :
  MII_LED_CONTROL;
 u16 leds = 0;

 switch (state) {
 case 131:
  return 2;

 case 128:
  leds = (nic->phy == phy_82552_v) ? E100_82552_LED_ON :
         (nic->mac < mac_82559_D101M) ? led_on_557 : led_on_559;
  break;

 case 129:
  leds = (nic->phy == phy_82552_v) ? E100_82552_LED_OFF : led_off;
  break;

 case 130:
  break;
 }

 mdio_write(netdev, nic->mii.phy_id, led_reg, leds);
 return 0;
}
