
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx5e_rep_indr_block_priv {TYPE_1__* rpriv; } ;
struct mlx5e_priv {int dummy; } ;
struct flow_cls_offload {int command; } ;
struct TYPE_2__ {int netdev; } ;


 int EGRESS ;
 int EOPNOTSUPP ;
 int ESW_OFFLOAD ;



 unsigned long MLX5_TC_FLAG (int ) ;
 int mlx5e_configure_flower (struct net_device*,struct mlx5e_priv*,struct flow_cls_offload*,unsigned long) ;
 int mlx5e_delete_flower (struct net_device*,struct mlx5e_priv*,struct flow_cls_offload*,unsigned long) ;
 int mlx5e_stats_flower (struct net_device*,struct mlx5e_priv*,struct flow_cls_offload*,unsigned long) ;
 struct mlx5e_priv* netdev_priv (int ) ;

__attribute__((used)) static int
mlx5e_rep_indr_offload(struct net_device *netdev,
         struct flow_cls_offload *flower,
         struct mlx5e_rep_indr_block_priv *indr_priv)
{
 unsigned long flags = MLX5_TC_FLAG(EGRESS) | MLX5_TC_FLAG(ESW_OFFLOAD);
 struct mlx5e_priv *priv = netdev_priv(indr_priv->rpriv->netdev);
 int err = 0;

 switch (flower->command) {
 case 129:
  err = mlx5e_configure_flower(netdev, priv, flower, flags);
  break;
 case 130:
  err = mlx5e_delete_flower(netdev, priv, flower, flags);
  break;
 case 128:
  err = mlx5e_stats_flower(netdev, priv, flower, flags);
  break;
 default:
  err = -EOPNOTSUPP;
 }

 return err;
}
