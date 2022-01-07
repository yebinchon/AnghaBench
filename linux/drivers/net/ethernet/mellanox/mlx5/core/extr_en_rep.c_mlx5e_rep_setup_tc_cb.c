
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;
 int ESW_OFFLOAD ;
 int INGRESS ;
 unsigned long MLX5_TC_FLAG (int ) ;


 int mlx5e_rep_setup_tc_cls_flower (struct mlx5e_priv*,void*,unsigned long) ;
 int mlx5e_rep_setup_tc_cls_matchall (struct mlx5e_priv*,void*) ;

__attribute__((used)) static int mlx5e_rep_setup_tc_cb(enum tc_setup_type type, void *type_data,
     void *cb_priv)
{
 unsigned long flags = MLX5_TC_FLAG(INGRESS) | MLX5_TC_FLAG(ESW_OFFLOAD);
 struct mlx5e_priv *priv = cb_priv;

 switch (type) {
 case 129:
  return mlx5e_rep_setup_tc_cls_flower(priv, type_data, flags);
 case 128:
  return mlx5e_rep_setup_tc_cls_matchall(priv, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
