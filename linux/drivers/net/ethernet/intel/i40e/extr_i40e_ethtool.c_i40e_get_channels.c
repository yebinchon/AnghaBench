
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct i40e_vsi {int num_queue_pairs; struct i40e_pf* back; } ;
struct i40e_pf {int flags; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct ethtool_channels {int other_count; int max_other; int combined_count; int max_combined; } ;


 int I40E_FLAG_FD_SB_ENABLED ;
 int i40e_max_channels (struct i40e_vsi*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void i40e_get_channels(struct net_device *dev,
         struct ethtool_channels *ch)
{
 struct i40e_netdev_priv *np = netdev_priv(dev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;


 ch->max_combined = i40e_max_channels(vsi);


 ch->other_count = (pf->flags & I40E_FLAG_FD_SB_ENABLED) ? 1 : 0;
 ch->max_other = ch->other_count;


 ch->combined_count = vsi->num_queue_pairs;
}
