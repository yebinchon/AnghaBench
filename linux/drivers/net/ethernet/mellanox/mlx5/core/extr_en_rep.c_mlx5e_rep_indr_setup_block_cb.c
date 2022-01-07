
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rep_indr_block_priv {int netdev; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int mlx5e_rep_indr_offload (int ,void*,struct mlx5e_rep_indr_block_priv*) ;

__attribute__((used)) static int mlx5e_rep_indr_setup_block_cb(enum tc_setup_type type,
      void *type_data, void *indr_priv)
{
 struct mlx5e_rep_indr_block_priv *priv = indr_priv;

 switch (type) {
 case 128:
  return mlx5e_rep_indr_offload(priv->netdev, type_data, priv);
 default:
  return -EOPNOTSUPP;
 }
}
