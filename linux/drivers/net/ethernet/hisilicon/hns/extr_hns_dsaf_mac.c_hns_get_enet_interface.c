
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_mac_cb {int max_speed; size_t phy_if; } ;
typedef enum mac_mode { ____Placeholder_mac_mode } mac_mode ;


 int MAC_MODE_MII_100 ;
 int MAC_MODE_XGMII_10000 ;



 int* g_mac_mode_100 ;
 int* g_mac_mode_1000 ;

__attribute__((used)) static enum mac_mode hns_get_enet_interface(const struct hns_mac_cb *mac_cb)
{
 switch (mac_cb->max_speed) {
 case 130:
  return g_mac_mode_100[mac_cb->phy_if];
 case 129:
  return g_mac_mode_1000[mac_cb->phy_if];
 case 128:
  return MAC_MODE_XGMII_10000;
 default:
  return MAC_MODE_MII_100;
 }
}
