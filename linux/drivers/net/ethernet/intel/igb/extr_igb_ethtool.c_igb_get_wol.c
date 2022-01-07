
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int device_id; } ;
struct igb_adapter {int flags; int wol; TYPE_1__ hw; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;


 int E1000_WUFC_BC ;
 int E1000_WUFC_EX ;
 int E1000_WUFC_LNKC ;
 int E1000_WUFC_MAG ;
 int E1000_WUFC_MC ;
 int IGB_FLAG_WOL_SUPPORTED ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void igb_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
 struct igb_adapter *adapter = netdev_priv(netdev);

 wol->wolopts = 0;

 if (!(adapter->flags & IGB_FLAG_WOL_SUPPORTED))
  return;

 wol->supported = WAKE_UCAST | WAKE_MCAST |
    WAKE_BCAST | WAKE_MAGIC |
    WAKE_PHY;


 switch (adapter->hw.device_id) {
 default:
  break;
 }

 if (adapter->wol & E1000_WUFC_EX)
  wol->wolopts |= WAKE_UCAST;
 if (adapter->wol & E1000_WUFC_MC)
  wol->wolopts |= WAKE_MCAST;
 if (adapter->wol & E1000_WUFC_BC)
  wol->wolopts |= WAKE_BCAST;
 if (adapter->wol & E1000_WUFC_MAG)
  wol->wolopts |= WAKE_MAGIC;
 if (adapter->wol & E1000_WUFC_LNKC)
  wol->wolopts |= WAKE_PHY;
}
