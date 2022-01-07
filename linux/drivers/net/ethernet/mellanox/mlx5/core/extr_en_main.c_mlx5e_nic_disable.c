
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5e_priv {int set_rx_mode_work; int wq; TYPE_1__* netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ reg_state; } ;


 scalar_t__ NETREG_REGISTERED ;
 int mlx5_lag_remove (struct mlx5_core_dev*) ;
 int mlx5e_close (TYPE_1__*) ;
 int mlx5e_dcbnl_delete_app (struct mlx5e_priv*) ;
 int mlx5e_disable_async_events (struct mlx5e_priv*) ;
 int mlx5e_hv_vhca_stats_destroy (struct mlx5e_priv*) ;
 int mlx5e_monitor_counter_cleanup (struct mlx5e_priv*) ;
 scalar_t__ mlx5e_monitor_counter_supported (struct mlx5e_priv*) ;
 int netif_device_detach (TYPE_1__*) ;
 scalar_t__ netif_running (TYPE_1__*) ;
 int queue_work (int ,int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void mlx5e_nic_disable(struct mlx5e_priv *priv)
{
 struct mlx5_core_dev *mdev = priv->mdev;






 rtnl_lock();
 if (netif_running(priv->netdev))
  mlx5e_close(priv->netdev);
 netif_device_detach(priv->netdev);
 rtnl_unlock();

 queue_work(priv->wq, &priv->set_rx_mode_work);

 mlx5e_hv_vhca_stats_destroy(priv);
 if (mlx5e_monitor_counter_supported(priv))
  mlx5e_monitor_counter_cleanup(priv);

 mlx5e_disable_async_events(priv);
 mlx5_lag_remove(mdev);
}
