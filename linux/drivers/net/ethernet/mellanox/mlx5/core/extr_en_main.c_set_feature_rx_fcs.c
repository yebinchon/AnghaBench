
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int scatter_fcs_en; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct mlx5e_priv {int state_lock; TYPE_2__ channels; } ;


 int mlx5e_modify_channels_scatter_fcs (TYPE_2__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int set_feature_rx_fcs(struct net_device *netdev, bool enable)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 int err;

 mutex_lock(&priv->state_lock);

 priv->channels.params.scatter_fcs_en = enable;
 err = mlx5e_modify_channels_scatter_fcs(&priv->channels, enable);
 if (err)
  priv->channels.params.scatter_fcs_en = !enable;

 mutex_unlock(&priv->state_lock);

 return err;
}
