
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct flow_block_offload {int unlocked_driver_cb; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int flow_block_cb_setup_simple (void*,int *,int ,struct mlx5e_priv*,struct mlx5e_priv*,int) ;
 int mlx5e_rep_block_cb_list ;
 int mlx5e_rep_setup_tc_cb ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_rep_setup_tc(struct net_device *dev, enum tc_setup_type type,
         void *type_data)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct flow_block_offload *f = type_data;

 switch (type) {
 case 128:
  f->unlocked_driver_cb = 1;
  return flow_block_cb_setup_simple(type_data,
        &mlx5e_rep_block_cb_list,
        mlx5e_rep_setup_tc_cb,
        priv, priv, 1);
 default:
  return -EOPNOTSUPP;
 }
}
