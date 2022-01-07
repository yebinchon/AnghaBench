
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct tc_cls_matchall_offload {int stats; } ;
struct rtnl_link_stats64 {scalar_t__ rx_bytes; scalar_t__ rx_packets; } ;
struct mlx5e_rep_priv {struct rtnl_link_stats64 prev_vf_vport_stats; } ;
struct TYPE_2__ {struct rtnl_link_stats64 vf_vport; } ;
struct mlx5e_priv {TYPE_1__ stats; struct mlx5e_rep_priv* ppriv; } ;


 int flow_stats_update (int *,scalar_t__,scalar_t__,int ) ;
 int jiffies ;

void mlx5e_tc_stats_matchall(struct mlx5e_priv *priv,
        struct tc_cls_matchall_offload *ma)
{
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 struct rtnl_link_stats64 cur_stats;
 u64 dbytes;
 u64 dpkts;

 cur_stats = priv->stats.vf_vport;
 dpkts = cur_stats.rx_packets - rpriv->prev_vf_vport_stats.rx_packets;
 dbytes = cur_stats.rx_bytes - rpriv->prev_vf_vport_stats.rx_bytes;
 rpriv->prev_vf_vport_stats = cur_stats;
 flow_stats_update(&ma->stats, dpkts, dbytes, jiffies);
}
