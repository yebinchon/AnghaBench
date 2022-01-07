
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
 int mlx5e_block_cb_list ;
 int mlx5e_setup_tc_block_cb ;
 int mlx5e_setup_tc_mqprio (struct mlx5e_priv*,void*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_setup_tc(struct net_device *dev, enum tc_setup_type type,
     void *type_data)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 switch (type) {
 case 128:
  return mlx5e_setup_tc_mqprio(priv, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
