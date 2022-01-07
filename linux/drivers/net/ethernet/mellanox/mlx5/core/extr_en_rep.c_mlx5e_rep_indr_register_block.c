
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_rep_priv {int netdev; } ;
struct mlx5e_priv {int mdev; } ;


 int __flow_indr_block_cb_register (struct net_device*,struct mlx5e_rep_priv*,int ,struct mlx5e_rep_priv*) ;
 int mlx5_core_err (int ,char*,int ,int) ;
 int mlx5e_rep_indr_setup_tc_cb ;
 int netdev_name (struct net_device*) ;
 struct mlx5e_priv* netdev_priv (int ) ;

__attribute__((used)) static int mlx5e_rep_indr_register_block(struct mlx5e_rep_priv *rpriv,
      struct net_device *netdev)
{
 int err;

 err = __flow_indr_block_cb_register(netdev, rpriv,
         mlx5e_rep_indr_setup_tc_cb,
         rpriv);
 if (err) {
  struct mlx5e_priv *priv = netdev_priv(rpriv->netdev);

  mlx5_core_err(priv->mdev, "Failed to register remote block notifier for %s err=%d\n",
         netdev_name(netdev), err);
 }
 return err;
}
