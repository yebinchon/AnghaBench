
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5e_tc_flow {TYPE_3__* priv; } ;
struct mlx5_rep_uplink_priv {int unready_flows_lock; } ;
struct mlx5e_rep_priv {struct mlx5_rep_uplink_priv uplink_priv; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_6__ {TYPE_2__* mdev; } ;
struct TYPE_4__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_5__ {TYPE_1__ priv; } ;


 int REP_ETH ;
 struct mlx5e_rep_priv* mlx5_eswitch_get_uplink_priv (struct mlx5_eswitch*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unready_flow_del (struct mlx5e_tc_flow*) ;

__attribute__((used)) static void remove_unready_flow(struct mlx5e_tc_flow *flow)
{
 struct mlx5_rep_uplink_priv *uplink_priv;
 struct mlx5e_rep_priv *rpriv;
 struct mlx5_eswitch *esw;

 esw = flow->priv->mdev->priv.eswitch;
 rpriv = mlx5_eswitch_get_uplink_priv(esw, REP_ETH);
 uplink_priv = &rpriv->uplink_priv;

 mutex_lock(&uplink_priv->unready_flows_lock);
 unready_flow_del(flow);
 mutex_unlock(&uplink_priv->unready_flows_lock);
}
