
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ vlan_id; int status; } ;
struct e1000_hw {TYPE_1__ mng_cookie; } ;
struct e1000_adapter {scalar_t__ mng_vlan_id; int active_vlans; struct net_device* netdev; struct e1000_hw hw; } ;


 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT ;
 scalar_t__ E1000_MNG_VLAN_NONE ;
 int ETH_P_8021Q ;
 int e1000_vlan_rx_add_vid (struct net_device*,int ,scalar_t__) ;
 int e1000_vlan_rx_kill_vid (struct net_device*,int ,scalar_t__) ;
 int e1000_vlan_used (struct e1000_adapter*) ;
 int htons (int ) ;
 int test_bit (scalar_t__,int ) ;

__attribute__((used)) static void e1000_update_mng_vlan(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 u16 vid = hw->mng_cookie.vlan_id;
 u16 old_vid = adapter->mng_vlan_id;

 if (!e1000_vlan_used(adapter))
  return;

 if (!test_bit(vid, adapter->active_vlans)) {
  if (hw->mng_cookie.status &
      E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT) {
   e1000_vlan_rx_add_vid(netdev, htons(ETH_P_8021Q), vid);
   adapter->mng_vlan_id = vid;
  } else {
   adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
  }
  if ((old_vid != (u16)E1000_MNG_VLAN_NONE) &&
      (vid != old_vid) &&
      !test_bit(old_vid, adapter->active_vlans))
   e1000_vlan_rx_kill_vid(netdev, htons(ETH_P_8021Q),
            old_vid);
 } else {
  adapter->mng_vlan_id = vid;
 }
}
