
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_tc_flow_parse_attr {int spec; struct net_device* filter_dev; } ;
struct mlx5e_tc_flow {int init_done; int priv; int esw_attr; } ;
struct mlx5e_priv {int dummy; } ;
struct mlx5_eswitch_rep {int dummy; } ;
struct mlx5_esw_flow_attr {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
struct flow_rule {int action; } ;
struct TYPE_2__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;


 unsigned long BIT (int ) ;
 int ENETUNREACH ;
 struct mlx5e_tc_flow* ERR_PTR (int) ;
 int MLX5E_TC_FLOW_FLAG_ESWITCH ;
 int add_unready_flow (struct mlx5e_tc_flow*) ;
 int complete_all (int *) ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 scalar_t__ mlx5_lag_is_multipath (struct mlx5_core_dev*) ;
 int mlx5e_alloc_flow (struct mlx5e_priv*,int,struct flow_cls_offload*,unsigned long,struct mlx5e_tc_flow_parse_attr**,struct mlx5e_tc_flow**) ;
 int mlx5e_flow_esw_attr_init (int ,struct mlx5e_priv*,struct mlx5e_tc_flow_parse_attr*,struct flow_cls_offload*,struct mlx5_eswitch_rep*,struct mlx5_core_dev*) ;
 int mlx5e_flow_put (struct mlx5e_priv*,struct mlx5e_tc_flow*) ;
 int mlx5e_tc_add_fdb_flow (struct mlx5e_priv*,struct mlx5e_tc_flow*,struct netlink_ext_ack*) ;
 int parse_cls_flower (int ,struct mlx5e_tc_flow*,int *,struct flow_cls_offload*,struct net_device*) ;
 int parse_tc_fdb_actions (struct mlx5e_priv*,int *,struct mlx5e_tc_flow*,struct netlink_ext_ack*) ;

__attribute__((used)) static struct mlx5e_tc_flow *
__mlx5e_add_fdb_flow(struct mlx5e_priv *priv,
       struct flow_cls_offload *f,
       unsigned long flow_flags,
       struct net_device *filter_dev,
       struct mlx5_eswitch_rep *in_rep,
       struct mlx5_core_dev *in_mdev)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(f);
 struct netlink_ext_ack *extack = f->common.extack;
 struct mlx5e_tc_flow_parse_attr *parse_attr;
 struct mlx5e_tc_flow *flow;
 int attr_size, err;

 flow_flags |= BIT(MLX5E_TC_FLOW_FLAG_ESWITCH);
 attr_size = sizeof(struct mlx5_esw_flow_attr);
 err = mlx5e_alloc_flow(priv, attr_size, f, flow_flags,
          &parse_attr, &flow);
 if (err)
  goto out;

 parse_attr->filter_dev = filter_dev;
 mlx5e_flow_esw_attr_init(flow->esw_attr,
     priv, parse_attr,
     f, in_rep, in_mdev);

 err = parse_cls_flower(flow->priv, flow, &parse_attr->spec,
          f, filter_dev);
 if (err)
  goto err_free;

 err = parse_tc_fdb_actions(priv, &rule->action, flow, extack);
 if (err)
  goto err_free;

 err = mlx5e_tc_add_fdb_flow(priv, flow, extack);
 complete_all(&flow->init_done);
 if (err) {
  if (!(err == -ENETUNREACH && mlx5_lag_is_multipath(in_mdev)))
   goto err_free;

  add_unready_flow(flow);
 }

 return flow;

err_free:
 mlx5e_flow_put(priv, flow);
out:
 return ERR_PTR(err);
}
