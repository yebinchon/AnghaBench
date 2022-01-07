
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int mtu; int features; } ;
struct TYPE_4__ {int type; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct TYPE_3__ {int up; } ;
struct ixgbe_adapter {TYPE_1__ fcoe; struct net_device* netdev; struct ixgbe_hw hw; } ;


 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int IXGBE_BT2KB (int ) ;
 int IXGBE_FCOE_JUMBO_FRAME_SIZE ;
 int IXGBE_LOW_DV (int) ;
 int IXGBE_LOW_DV_X540 (int) ;
 int NETIF_F_FCOE_MTU ;




 int netdev_get_prio_tc_map (struct net_device*,int ) ;

__attribute__((used)) static int ixgbe_lpbthresh(struct ixgbe_adapter *adapter, int pb)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct net_device *dev = adapter->netdev;
 int tc;
 u32 dv_id;


 tc = dev->mtu + ETH_HLEN + ETH_FCS_LEN;
 switch (hw->mac.type) {
 case 131:
 case 130:
 case 129:
 case 128:
  dv_id = IXGBE_LOW_DV_X540(tc);
  break;
 default:
  dv_id = IXGBE_LOW_DV(tc);
  break;
 }


 return IXGBE_BT2KB(dv_id);
}
