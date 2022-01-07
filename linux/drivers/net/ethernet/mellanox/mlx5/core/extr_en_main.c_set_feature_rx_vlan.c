
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int vlan_strip_disable; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct mlx5e_priv {int state_lock; TYPE_2__ channels; int state; } ;


 int MLX5E_STATE_OPENED ;
 int mlx5e_modify_channels_vsd (TYPE_2__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int set_feature_rx_vlan(struct net_device *netdev, bool enable)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 int err = 0;

 mutex_lock(&priv->state_lock);

 priv->channels.params.vlan_strip_disable = !enable;
 if (!test_bit(MLX5E_STATE_OPENED, &priv->state))
  goto unlock;

 err = mlx5e_modify_channels_vsd(&priv->channels, !enable);
 if (err)
  priv->channels.params.vlan_strip_disable = enable;

unlock:
 mutex_unlock(&priv->state_lock);

 return err;
}
