
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct mlx4_en_priv {int watchdog_task; int port; scalar_t__* tx_ring_num; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; int workqueue; int device_up; } ;


 int DRV ;
 int EOPNOTSUPP ;
 size_t TX_XDP ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,...) ;
 int en_err (struct mlx4_en_priv*,char*,int ) ;
 int mlx4_en_check_xdp_mtu (struct net_device*,int) ;
 int mlx4_en_start_port (struct net_device*) ;
 int mlx4_en_stop_port (struct net_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int mlx4_en_change_mtu(struct net_device *dev, int new_mtu)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int err = 0;

 en_dbg(DRV, priv, "Change MTU called - current:%d new:%d\n",
   dev->mtu, new_mtu);

 if (priv->tx_ring_num[TX_XDP] &&
     !mlx4_en_check_xdp_mtu(dev, new_mtu))
  return -EOPNOTSUPP;

 dev->mtu = new_mtu;

 if (netif_running(dev)) {
  mutex_lock(&mdev->state_lock);
  if (!mdev->device_up) {


   en_dbg(DRV, priv, "Change MTU called with card down!?\n");
  } else {
   mlx4_en_stop_port(dev, 1);
   err = mlx4_en_start_port(dev);
   if (err) {
    en_err(priv, "Failed restarting port:%d\n",
      priv->port);
    queue_work(mdev->workqueue, &priv->watchdog_task);
   }
  }
  mutex_unlock(&mdev->state_lock);
 }
 return 0;
}
