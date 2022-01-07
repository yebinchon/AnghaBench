
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int features; } ;
struct ixgbe_adapter {int flags2; int rx_itr_setting; int flags; int hw_tcs; int num_rx_pools; int atr_sample_rate; TYPE_1__* ring_feature; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int limit; } ;


 int IXGBE_FLAG2_RSC_CAPABLE ;
 int IXGBE_FLAG2_RSC_ENABLED ;
 int IXGBE_FLAG2_UDP_TUN_REREG_NEEDED ;
 int IXGBE_FLAG_FDIR_HASH_CAPABLE ;
 int IXGBE_FLAG_FDIR_PERFECT_CAPABLE ;
 int IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE ;
 int IXGBE_MIN_RSC_ITR ;
 int IXGBE_VXLANCTRL_GENEVE_UDPPORT_MASK ;
 int IXGBE_VXLANCTRL_VXLAN_UDPPORT_MASK ;
 int NETIF_F_HW_L2FW_DOFFLOAD ;
 int NETIF_F_HW_TC ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_LRO ;
 int NETIF_F_NTUPLE ;
 int NETIF_F_RXALL ;
 int NETIF_F_RXCSUM ;
 size_t RING_F_RSS ;
 int e_info (int ,char*) ;
 int ixgbe_clear_udp_tunnel_port (struct ixgbe_adapter*,int ) ;
 int ixgbe_do_reset (struct net_device*) ;
 int ixgbe_reset_l2fw_offload (struct ixgbe_adapter*) ;
 int ixgbe_set_rx_mode (struct net_device*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int probe ;

__attribute__((used)) static int ixgbe_set_features(struct net_device *netdev,
         netdev_features_t features)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 netdev_features_t changed = netdev->features ^ features;
 bool need_reset = 0;


 if (!(features & NETIF_F_LRO)) {
  if (adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED)
   need_reset = 1;
  adapter->flags2 &= ~IXGBE_FLAG2_RSC_ENABLED;
 } else if ((adapter->flags2 & IXGBE_FLAG2_RSC_CAPABLE) &&
     !(adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED)) {
  if (adapter->rx_itr_setting == 1 ||
      adapter->rx_itr_setting > IXGBE_MIN_RSC_ITR) {
   adapter->flags2 |= IXGBE_FLAG2_RSC_ENABLED;
   need_reset = 1;
  } else if ((changed ^ features) & NETIF_F_LRO) {
   e_info(probe, "rx-usecs set too low, "
          "disabling RSC\n");
  }
 }





 if ((features & NETIF_F_NTUPLE) || (features & NETIF_F_HW_TC)) {

  if (!(adapter->flags & IXGBE_FLAG_FDIR_PERFECT_CAPABLE))
   need_reset = 1;

  adapter->flags &= ~IXGBE_FLAG_FDIR_HASH_CAPABLE;
  adapter->flags |= IXGBE_FLAG_FDIR_PERFECT_CAPABLE;
 } else {

  if (adapter->flags & IXGBE_FLAG_FDIR_PERFECT_CAPABLE)
   need_reset = 1;

  adapter->flags &= ~IXGBE_FLAG_FDIR_PERFECT_CAPABLE;


  if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED ||

      (adapter->hw_tcs > 1) ||

      (adapter->ring_feature[RING_F_RSS].limit <= 1) ||

      (!adapter->atr_sample_rate))
   ;
  else
   adapter->flags |= IXGBE_FLAG_FDIR_HASH_CAPABLE;
 }

 if (changed & NETIF_F_RXALL)
  need_reset = 1;

 netdev->features = features;

 if ((adapter->flags & IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE)) {
  if (features & NETIF_F_RXCSUM) {
   adapter->flags2 |= IXGBE_FLAG2_UDP_TUN_REREG_NEEDED;
  } else {
   u32 port_mask = IXGBE_VXLANCTRL_VXLAN_UDPPORT_MASK;

   ixgbe_clear_udp_tunnel_port(adapter, port_mask);
  }
 }

 if ((adapter->flags & IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE)) {
  if (features & NETIF_F_RXCSUM) {
   adapter->flags2 |= IXGBE_FLAG2_UDP_TUN_REREG_NEEDED;
  } else {
   u32 port_mask = IXGBE_VXLANCTRL_GENEVE_UDPPORT_MASK;

   ixgbe_clear_udp_tunnel_port(adapter, port_mask);
  }
 }

 if ((changed & NETIF_F_HW_L2FW_DOFFLOAD) && adapter->num_rx_pools > 1)
  ixgbe_reset_l2fw_offload(adapter);
 else if (need_reset)
  ixgbe_do_reset(netdev);
 else if (changed & (NETIF_F_HW_VLAN_CTAG_RX |
       NETIF_F_HW_VLAN_CTAG_FILTER))
  ixgbe_set_rx_mode(netdev);

 return 1;
}
