
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int num_rx_queues; int rx_cpu_rmap; } ;
struct mlx5e_profile {int rq_groups; } ;
struct mlx5e_priv {int max_nch; int max_opened_tc; int wq; int update_stats_work; int tx_timeout_work; int set_rx_mode_work; int update_carrier_work; int state_lock; int msglevel; void* ppriv; struct mlx5e_profile const* profile; struct net_device* netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int MLX5E_MSG_LEVEL ;
 int create_singlethread_workqueue (char*) ;
 int max_t (int ,int ,int) ;
 int mlx5_eq_table_get_rmap (struct mlx5_core_dev*) ;
 int mlx5e_set_rx_mode_work ;
 int mlx5e_tx_timeout_work ;
 int mlx5e_update_carrier_work ;
 int mlx5e_update_stats_work ;
 int mutex_init (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int u8 ;

int mlx5e_netdev_init(struct net_device *netdev,
        struct mlx5e_priv *priv,
        struct mlx5_core_dev *mdev,
        const struct mlx5e_profile *profile,
        void *ppriv)
{

 priv->mdev = mdev;
 priv->netdev = netdev;
 priv->profile = profile;
 priv->ppriv = ppriv;
 priv->msglevel = MLX5E_MSG_LEVEL;
 priv->max_nch = netdev->num_rx_queues / max_t(u8, profile->rq_groups, 1);
 priv->max_opened_tc = 1;

 mutex_init(&priv->state_lock);
 INIT_WORK(&priv->update_carrier_work, mlx5e_update_carrier_work);
 INIT_WORK(&priv->set_rx_mode_work, mlx5e_set_rx_mode_work);
 INIT_WORK(&priv->tx_timeout_work, mlx5e_tx_timeout_work);
 INIT_WORK(&priv->update_stats_work, mlx5e_update_stats_work);

 priv->wq = create_singlethread_workqueue("mlx5e");
 if (!priv->wq)
  return -ENOMEM;


 netif_carrier_off(netdev);





 return 0;
}
