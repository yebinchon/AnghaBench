
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int num_tx_queues; } ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct TYPE_2__ {int partition_id; } ;
struct i40e_pf {size_t lan_vsi; TYPE_1__ hw; struct i40e_vsi** vsi; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;


 int I40E_PF_STATS_LEN ;
 int I40E_QUEUE_STATS_LEN ;
 int I40E_VSI_STATS_LEN ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_get_stats_count(struct net_device *netdev)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;
 int stats_len;

 if (vsi == pf->vsi[pf->lan_vsi] && pf->hw.partition_id == 1)
  stats_len = I40E_PF_STATS_LEN;
 else
  stats_len = I40E_VSI_STATS_LEN;
 stats_len += I40E_QUEUE_STATS_LEN * 2 * netdev->num_tx_queues;

 return stats_len;
}
