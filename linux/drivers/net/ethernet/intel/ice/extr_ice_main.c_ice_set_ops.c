
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; } ;
struct ice_pf {int dummy; } ;


 scalar_t__ ice_is_safe_mode (struct ice_pf*) ;
 int ice_netdev_ops ;
 int ice_netdev_safe_mode_ops ;
 struct ice_pf* ice_netdev_to_pf (struct net_device*) ;
 int ice_set_ethtool_ops (struct net_device*) ;
 int ice_set_ethtool_safe_mode_ops (struct net_device*) ;

__attribute__((used)) static void ice_set_ops(struct net_device *netdev)
{
 struct ice_pf *pf = ice_netdev_to_pf(netdev);

 if (ice_is_safe_mode(pf)) {
  netdev->netdev_ops = &ice_netdev_safe_mode_ops;
  ice_set_ethtool_safe_mode_ops(netdev);
  return;
 }

 netdev->netdev_ops = &ice_netdev_ops;
 ice_set_ethtool_ops(netdev);
}
