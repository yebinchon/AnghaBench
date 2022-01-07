
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int netdev; } ;
struct flow_cls_offload {int command; } ;


 int EOPNOTSUPP ;



 int mlx5e_configure_flower (int ,struct mlx5e_priv*,struct flow_cls_offload*,int) ;
 int mlx5e_delete_flower (int ,struct mlx5e_priv*,struct flow_cls_offload*,int) ;
 int mlx5e_stats_flower (int ,struct mlx5e_priv*,struct flow_cls_offload*,int) ;

__attribute__((used)) static int
mlx5e_rep_setup_tc_cls_flower(struct mlx5e_priv *priv,
         struct flow_cls_offload *cls_flower, int flags)
{
 switch (cls_flower->command) {
 case 129:
  return mlx5e_configure_flower(priv->netdev, priv, cls_flower,
           flags);
 case 130:
  return mlx5e_delete_flower(priv->netdev, priv, cls_flower,
        flags);
 case 128:
  return mlx5e_stats_flower(priv->netdev, priv, cls_flower,
       flags);
 default:
  return -EOPNOTSUPP;
 }
}
