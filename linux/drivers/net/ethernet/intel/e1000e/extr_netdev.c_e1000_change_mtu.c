
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct net_device {int mtu; TYPE_3__ dev; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct e1000_adapter {int flags; int flags2; int max_frame_size; int rx_buffer_len; int state; TYPE_2__ hw; } ;


 int EINVAL ;
 int ETH_DATA_LEN ;
 int ETH_FCS_LEN ;
 int FLAG2_CRC_STRIPPING ;
 int FLAG_HAS_JUMBO_FRAMES ;
 int VLAN_ETH_FRAME_LEN ;
 int VLAN_ETH_HLEN ;
 int __E1000_RESETTING ;
 int clear_bit (int ,int *) ;
 scalar_t__ e1000_pch2lan ;
 int e1000e_down (struct e1000_adapter*,int) ;
 int e1000e_reset (struct e1000_adapter*) ;
 int e1000e_up (struct e1000_adapter*) ;
 int e_err (char*) ;
 int e_info (char*,int,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int e1000_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 int max_frame = new_mtu + VLAN_ETH_HLEN + ETH_FCS_LEN;


 if ((new_mtu > ETH_DATA_LEN) &&
     !(adapter->flags & FLAG_HAS_JUMBO_FRAMES)) {
  e_err("Jumbo Frames not supported.\n");
  return -EINVAL;
 }


 if ((adapter->hw.mac.type >= e1000_pch2lan) &&
     !(adapter->flags2 & FLAG2_CRC_STRIPPING) &&
     (new_mtu > ETH_DATA_LEN)) {
  e_err("Jumbo Frames not supported on this device when CRC stripping is disabled.\n");
  return -EINVAL;
 }

 while (test_and_set_bit(__E1000_RESETTING, &adapter->state))
  usleep_range(1000, 1100);

 adapter->max_frame_size = max_frame;
 e_info("changing MTU from %d to %d\n", netdev->mtu, new_mtu);
 netdev->mtu = new_mtu;

 pm_runtime_get_sync(netdev->dev.parent);

 if (netif_running(netdev))
  e1000e_down(adapter, 1);
 if (max_frame <= 2048)
  adapter->rx_buffer_len = 2048;
 else
  adapter->rx_buffer_len = 4096;


 if (max_frame <= (VLAN_ETH_FRAME_LEN + ETH_FCS_LEN))
  adapter->rx_buffer_len = VLAN_ETH_FRAME_LEN + ETH_FCS_LEN;

 if (netif_running(netdev))
  e1000e_up(adapter);
 else
  e1000e_reset(adapter);

 pm_runtime_put_sync(netdev->dev.parent);

 clear_bit(__E1000_RESETTING, &adapter->state);

 return 0;
}
