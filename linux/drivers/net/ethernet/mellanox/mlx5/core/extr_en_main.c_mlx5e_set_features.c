
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
typedef int netdev_features_t ;


 int EINVAL ;
 int MLX5E_HANDLE_FEATURE (int ,int ) ;
 int NETIF_F_HW_TC ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_LRO ;
 int NETIF_F_NTUPLE ;
 int NETIF_F_RXALL ;
 int NETIF_F_RXFCS ;
 int set_feature_arfs ;
 int set_feature_cvlan_filter ;
 int set_feature_lro ;
 int set_feature_rx_all ;
 int set_feature_rx_fcs ;
 int set_feature_rx_vlan ;
 int set_feature_tc_num_filters ;

int mlx5e_set_features(struct net_device *netdev, netdev_features_t features)
{
 netdev_features_t oper_features = netdev->features;
 int err = 0;




 err |= mlx5e_handle_feature(netdev, &oper_features, features, NETIF_F_LRO, set_feature_lro);
 err |= mlx5e_handle_feature(netdev, &oper_features, features, NETIF_F_HW_VLAN_CTAG_FILTER, set_feature_cvlan_filter);




 err |= mlx5e_handle_feature(netdev, &oper_features, features, NETIF_F_RXALL, set_feature_rx_all);
 err |= mlx5e_handle_feature(netdev, &oper_features, features, NETIF_F_RXFCS, set_feature_rx_fcs);
 err |= mlx5e_handle_feature(netdev, &oper_features, features, NETIF_F_HW_VLAN_CTAG_RX, set_feature_rx_vlan);




 if (err) {
  netdev->features = oper_features;
  return -EINVAL;
 }

 return 0;
}
