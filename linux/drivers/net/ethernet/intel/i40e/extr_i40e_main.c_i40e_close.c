
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct i40e_vsi {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;


 int i40e_vsi_close (struct i40e_vsi*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

int i40e_close(struct net_device *netdev)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;

 i40e_vsi_close(vsi);

 return 0;
}
