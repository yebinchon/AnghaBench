
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_tc_flow_parse_attr {int spec; struct net_device* filter_dev; } ;
struct mlx5e_tc_flow {int priv; } ;
struct mlx5e_priv {int netdev; } ;
struct mlx5_nic_flow_attr {int dummy; } ;
struct flow_rule {int action; } ;
struct TYPE_2__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;


 unsigned long BIT (int ) ;
 int EOPNOTSUPP ;
 int MLX5E_TC_FLOW_FLAG_NIC ;
 int OFFLOADED ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_flag_set (struct mlx5e_tc_flow*,int ) ;
 int kvfree (struct mlx5e_tc_flow_parse_attr*) ;
 int mlx5e_alloc_flow (struct mlx5e_priv*,int,struct flow_cls_offload*,unsigned long,struct mlx5e_tc_flow_parse_attr**,struct mlx5e_tc_flow**) ;
 int mlx5e_flow_put (struct mlx5e_priv*,struct mlx5e_tc_flow*) ;
 int mlx5e_tc_add_nic_flow (struct mlx5e_priv*,struct mlx5e_tc_flow_parse_attr*,struct mlx5e_tc_flow*,struct netlink_ext_ack*) ;
 int parse_cls_flower (int ,struct mlx5e_tc_flow*,int *,struct flow_cls_offload*,struct net_device*) ;
 int parse_tc_nic_actions (struct mlx5e_priv*,int *,struct mlx5e_tc_flow_parse_attr*,struct mlx5e_tc_flow*,struct netlink_ext_ack*) ;
 int tc_cls_can_offload_and_chain0 (int ,TYPE_1__*) ;

__attribute__((used)) static int
mlx5e_add_nic_flow(struct mlx5e_priv *priv,
     struct flow_cls_offload *f,
     unsigned long flow_flags,
     struct net_device *filter_dev,
     struct mlx5e_tc_flow **__flow)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(f);
 struct netlink_ext_ack *extack = f->common.extack;
 struct mlx5e_tc_flow_parse_attr *parse_attr;
 struct mlx5e_tc_flow *flow;
 int attr_size, err;


 if (!tc_cls_can_offload_and_chain0(priv->netdev, &f->common))
  return -EOPNOTSUPP;

 flow_flags |= BIT(MLX5E_TC_FLOW_FLAG_NIC);
 attr_size = sizeof(struct mlx5_nic_flow_attr);
 err = mlx5e_alloc_flow(priv, attr_size, f, flow_flags,
          &parse_attr, &flow);
 if (err)
  goto out;

 parse_attr->filter_dev = filter_dev;
 err = parse_cls_flower(flow->priv, flow, &parse_attr->spec,
          f, filter_dev);
 if (err)
  goto err_free;

 err = parse_tc_nic_actions(priv, &rule->action, parse_attr, flow, extack);
 if (err)
  goto err_free;

 err = mlx5e_tc_add_nic_flow(priv, parse_attr, flow, extack);
 if (err)
  goto err_free;

 flow_flag_set(flow, OFFLOADED);
 kvfree(parse_attr);
 *__flow = flow;

 return 0;

err_free:
 mlx5e_flow_put(priv, flow);
 kvfree(parse_attr);
out:
 return err;
}
