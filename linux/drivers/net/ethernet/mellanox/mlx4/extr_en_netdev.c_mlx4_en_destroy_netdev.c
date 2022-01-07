
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {size_t port; int service_task; int stats_task; int res; scalar_t__ allocated; scalar_t__ registered; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; int ** upper; int ** pndev; TYPE_2__* dev; int workqueue; } ;
struct TYPE_4__ {int flags2; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;


 int DRV ;
 int MLX4_DEV_CAP_FLAG2_TS ;
 int MLX4_EN_PAGE_SIZE ;
 int cancel_delayed_work (int *) ;
 int devlink_port_type_clear (int ) ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,size_t) ;
 int flush_workqueue (int ) ;
 int free_netdev (struct net_device*) ;
 int mlx4_en_cleanup_filters (struct mlx4_en_priv*) ;
 int mlx4_en_free_resources (struct mlx4_en_priv*) ;
 int mlx4_en_remove_timestamp (struct mlx4_en_dev*) ;
 int mlx4_free_hwq_res (TYPE_2__*,int *,int ) ;
 int mlx4_get_devlink_port (TYPE_2__*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

void mlx4_en_destroy_netdev(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;

 en_dbg(DRV, priv, "Destroying netdev on port:%d\n", priv->port);


 if (priv->registered) {
  devlink_port_type_clear(mlx4_get_devlink_port(mdev->dev,
             priv->port));
  unregister_netdev(dev);
 }

 if (priv->allocated)
  mlx4_free_hwq_res(mdev->dev, &priv->res, MLX4_EN_PAGE_SIZE);

 cancel_delayed_work(&priv->stats_task);
 cancel_delayed_work(&priv->service_task);

 flush_workqueue(mdev->workqueue);

 if (mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_TS)
  mlx4_en_remove_timestamp(mdev);


 mutex_lock(&mdev->state_lock);
 mdev->pndev[priv->port] = ((void*)0);
 mdev->upper[priv->port] = ((void*)0);





 mlx4_en_free_resources(priv);
 mutex_unlock(&mdev->state_lock);

 free_netdev(dev);
}
