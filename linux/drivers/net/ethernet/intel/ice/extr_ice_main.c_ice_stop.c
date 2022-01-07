
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ice_vsi {int dummy; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;


 int ice_vsi_close (struct ice_vsi*) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

int ice_stop(struct net_device *netdev)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;

 ice_vsi_close(vsi);

 return 0;
}
