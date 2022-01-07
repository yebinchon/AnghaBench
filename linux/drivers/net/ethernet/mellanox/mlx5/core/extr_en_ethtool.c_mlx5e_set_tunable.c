
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int state_lock; } ;
struct ethtool_tunable {int id; } ;


 int EINVAL ;

 int mlx5e_set_pfc_prevention_tout (struct net_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_set_tunable(struct net_device *dev,
        const struct ethtool_tunable *tuna,
        const void *data)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 int err;

 mutex_lock(&priv->state_lock);

 switch (tuna->id) {
 case 128:
  err = mlx5e_set_pfc_prevention_tout(dev, *(u16 *)data);
  break;
 default:
  err = -EINVAL;
  break;
 }

 mutex_unlock(&priv->state_lock);
 return err;
}
