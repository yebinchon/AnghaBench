
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct TYPE_2__ {int max_frame_size; int tx_jumbo_task_th; int rx_jumbo_th; } ;
struct atl1_adapter {int rx_buffer_len; TYPE_1__ hw; } ;


 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int VLAN_HLEN ;
 int atl1_down (struct atl1_adapter*) ;
 int atl1_up (struct atl1_adapter*) ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int atl1_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);
 int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;

 adapter->hw.max_frame_size = max_frame;
 adapter->hw.tx_jumbo_task_th = (max_frame + 7) >> 3;
 adapter->rx_buffer_len = (max_frame + 7) & ~7;
 adapter->hw.rx_jumbo_th = adapter->rx_buffer_len / 8;

 netdev->mtu = new_mtu;
 if (netif_running(netdev)) {
  atl1_down(adapter);
  atl1_up(adapter);
 }

 return 0;
}
