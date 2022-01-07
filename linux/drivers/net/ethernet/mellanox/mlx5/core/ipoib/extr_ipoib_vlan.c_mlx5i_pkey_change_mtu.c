
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct mlx5e_priv {int state_lock; } ;


 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mlx5i_pkey_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct mlx5e_priv *priv = mlx5i_epriv(netdev);

 mutex_lock(&priv->state_lock);
 netdev->mtu = new_mtu;
 mutex_unlock(&priv->state_lock);

 return 0;
}
