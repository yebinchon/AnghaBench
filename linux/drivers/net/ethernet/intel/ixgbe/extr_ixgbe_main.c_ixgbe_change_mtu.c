
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct ixgbe_ring {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {int num_rx_queues; int flags; TYPE_2__ hw; struct ixgbe_ring** rx_ring; scalar_t__ xdp_prog; } ;


 int EINVAL ;
 int ETH_DATA_LEN ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int VLAN_HLEN ;
 int e_info (int ,char*,int,int) ;
 int e_warn (int ,char*) ;
 scalar_t__ ixgbe_mac_82599EB ;
 int ixgbe_reinit_locked (struct ixgbe_adapter*) ;
 int ixgbe_rx_bufsz (struct ixgbe_ring*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int probe ;

__attribute__((used)) static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 if (adapter->xdp_prog) {
  int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
         VLAN_HLEN;
  int i;

  for (i = 0; i < adapter->num_rx_queues; i++) {
   struct ixgbe_ring *ring = adapter->rx_ring[i];

   if (new_frame_size > ixgbe_rx_bufsz(ring)) {
    e_warn(probe, "Requested MTU size is not supported with XDP\n");
    return -EINVAL;
   }
  }
 }






 if ((adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) &&
     (adapter->hw.mac.type == ixgbe_mac_82599EB) &&
     (new_mtu > ETH_DATA_LEN))
  e_warn(probe, "Setting MTU > 1500 will disable legacy VFs\n");

 e_info(probe, "changing MTU from %d to %d\n", netdev->mtu, new_mtu);


 netdev->mtu = new_mtu;

 if (netif_running(netdev))
  ixgbe_reinit_locked(adapter);

 return 0;
}
