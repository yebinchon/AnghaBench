
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_tc_flow {int * rule; struct mlx5_nic_flow_attr* nic_attr; } ;
struct TYPE_3__ {int t_lock; int * t; } ;
struct TYPE_4__ {TYPE_1__ tc; } ;
struct mlx5e_priv {TYPE_2__ fs; int mdev; } ;
struct mlx5_nic_flow_attr {int action; struct mlx5_fc* counter; } ;
struct mlx5_fc {int dummy; } ;


 int HAIRPIN ;
 int IS_ERR_OR_NULL (int ) ;
 int MLX5_FLOW_CONTEXT_ACTION_MOD_HDR ;
 int MLX5_TC_FLAG (int ) ;
 int NIC_OFFLOAD ;
 scalar_t__ flow_flag_test (struct mlx5e_tc_flow*,int ) ;
 int mlx5_del_flow_rules (int ) ;
 int mlx5_destroy_flow_table (int *) ;
 int mlx5_fc_destroy (int ,struct mlx5_fc*) ;
 int mlx5e_detach_mod_hdr (struct mlx5e_priv*,struct mlx5e_tc_flow*) ;
 int mlx5e_hairpin_flow_del (struct mlx5e_priv*,struct mlx5e_tc_flow*) ;
 int mlx5e_tc_num_filters (struct mlx5e_priv*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mlx5e_tc_del_nic_flow(struct mlx5e_priv *priv,
      struct mlx5e_tc_flow *flow)
{
 struct mlx5_nic_flow_attr *attr = flow->nic_attr;
 struct mlx5_fc *counter = ((void*)0);

 counter = attr->counter;
 if (!IS_ERR_OR_NULL(flow->rule[0]))
  mlx5_del_flow_rules(flow->rule[0]);
 mlx5_fc_destroy(priv->mdev, counter);

 mutex_lock(&priv->fs.tc.t_lock);
 if (!mlx5e_tc_num_filters(priv, MLX5_TC_FLAG(NIC_OFFLOAD)) && priv->fs.tc.t) {
  mlx5_destroy_flow_table(priv->fs.tc.t);
  priv->fs.tc.t = ((void*)0);
 }
 mutex_unlock(&priv->fs.tc.t_lock);

 if (attr->action & MLX5_FLOW_CONTEXT_ACTION_MOD_HDR)
  mlx5e_detach_mod_hdr(priv, flow);

 if (flow_flag_test(flow, HAIRPIN))
  mlx5e_hairpin_flow_del(priv, flow);
}
