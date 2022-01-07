
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ vlan_id; int status; } ;
struct TYPE_4__ {TYPE_1__ mng_cookie; } ;
struct e1000_adapter {scalar_t__ mng_vlan_id; TYPE_2__ hw; struct net_device* netdev; } ;


 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN ;
 scalar_t__ E1000_MNG_VLAN_NONE ;
 int ETH_P_8021Q ;
 int e1000_vlan_rx_add_vid (struct net_device*,int ,scalar_t__) ;
 int e1000_vlan_rx_kill_vid (struct net_device*,int ,scalar_t__) ;
 int htons (int ) ;

__attribute__((used)) static void e1000_update_mng_vlan(struct e1000_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 u16 vid = adapter->hw.mng_cookie.vlan_id;
 u16 old_vid = adapter->mng_vlan_id;

 if (adapter->hw.mng_cookie.status & E1000_MNG_DHCP_COOKIE_STATUS_VLAN) {
  e1000_vlan_rx_add_vid(netdev, htons(ETH_P_8021Q), vid);
  adapter->mng_vlan_id = vid;
 }

 if ((old_vid != (u16)E1000_MNG_VLAN_NONE) && (vid != old_vid))
  e1000_vlan_rx_kill_vid(netdev, htons(ETH_P_8021Q), old_vid);
}
