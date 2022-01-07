
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx5e_tc_flow {int dummy; } ;
struct mlx5e_priv {int netdev; TYPE_2__* mdev; } ;
struct mlx5_eswitch {scalar_t__ mode; } ;
struct TYPE_6__ {int extack; } ;
struct flow_cls_offload {TYPE_3__ common; } ;
struct TYPE_4__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_5__ {TYPE_1__ priv; } ;


 int EOPNOTSUPP ;
 scalar_t__ MLX5_ESWITCH_OFFLOADS ;
 int get_flags (unsigned long,unsigned long*) ;
 int mlx5e_add_fdb_flow (struct mlx5e_priv*,struct flow_cls_offload*,unsigned long,struct net_device*,struct mlx5e_tc_flow**) ;
 int mlx5e_add_nic_flow (struct mlx5e_priv*,struct flow_cls_offload*,unsigned long,struct net_device*,struct mlx5e_tc_flow**) ;
 int tc_can_offload_extack (int ,int ) ;

__attribute__((used)) static int
mlx5e_tc_add_flow(struct mlx5e_priv *priv,
    struct flow_cls_offload *f,
    unsigned long flags,
    struct net_device *filter_dev,
    struct mlx5e_tc_flow **flow)
{
 struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;
 unsigned long flow_flags;
 int err;

 get_flags(flags, &flow_flags);

 if (!tc_can_offload_extack(priv->netdev, f->common.extack))
  return -EOPNOTSUPP;

 if (esw && esw->mode == MLX5_ESWITCH_OFFLOADS)
  err = mlx5e_add_fdb_flow(priv, f, flow_flags,
      filter_dev, flow);
 else
  err = mlx5e_add_nic_flow(priv, f, flow_flags,
      filter_dev, flow);

 return err;
}
