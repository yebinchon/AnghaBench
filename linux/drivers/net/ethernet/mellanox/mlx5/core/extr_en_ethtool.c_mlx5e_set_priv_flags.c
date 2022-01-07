
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int state_lock; } ;
typedef enum mlx5e_priv_flag { ____Placeholder_mlx5e_priv_flag } mlx5e_priv_flag ;


 int MLX5E_NUM_PFLAGS ;
 int mlx5e_handle_pflag (struct net_device*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int netdev_update_features (struct net_device*) ;

__attribute__((used)) static int mlx5e_set_priv_flags(struct net_device *netdev, u32 pflags)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 enum mlx5e_priv_flag pflag;
 int err;

 mutex_lock(&priv->state_lock);

 for (pflag = 0; pflag < MLX5E_NUM_PFLAGS; pflag++) {
  err = mlx5e_handle_pflag(netdev, pflags, pflag);
  if (err)
   break;
 }

 mutex_unlock(&priv->state_lock);


 netdev_update_features(netdev);

 return err;
}
