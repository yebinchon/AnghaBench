
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {scalar_t__ rss_hash_fn; int rss_key; TYPE_1__* prof; scalar_t__ port_up; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; } ;
struct TYPE_2__ {int rss_rings; } ;


 int EINVAL ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 int MLX4_EN_RSS_KEY_SIZE ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int is_power_of_2 (int) ;
 int memcpy (int ,scalar_t__ const*,int ) ;
 int mlx4_en_check_rxfh_func (struct net_device*,scalar_t__ const) ;
 int mlx4_en_get_rxfh_indir_size (struct net_device*) ;
 int mlx4_en_start_port (struct net_device*) ;
 int mlx4_en_stop_port (struct net_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_set_rxfh(struct net_device *dev, const u32 *ring_index,
       const u8 *key, const u8 hfunc)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 u32 n = mlx4_en_get_rxfh_indir_size(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int port_up = 0;
 int err = 0;
 int i;
 int rss_rings = 0;




 for (i = 0; i < n; i++) {
  if (!ring_index)
   break;
  if (i > 0 && !ring_index[i] && !rss_rings)
   rss_rings = i;

  if (ring_index[i] != (i % (rss_rings ?: n)))
   return -EINVAL;
 }

 if (!rss_rings)
  rss_rings = n;


 if (!is_power_of_2(rss_rings))
  return -EINVAL;

 if (hfunc != ETH_RSS_HASH_NO_CHANGE) {
  err = mlx4_en_check_rxfh_func(dev, hfunc);
  if (err)
   return err;
 }

 mutex_lock(&mdev->state_lock);
 if (priv->port_up) {
  port_up = 1;
  mlx4_en_stop_port(dev, 1);
 }

 if (ring_index)
  priv->prof->rss_rings = rss_rings;
 if (key)
  memcpy(priv->rss_key, key, MLX4_EN_RSS_KEY_SIZE);
 if (hfunc != ETH_RSS_HASH_NO_CHANGE)
  priv->rss_hash_fn = hfunc;

 if (port_up) {
  err = mlx4_en_start_port(dev);
  if (err)
   en_err(priv, "Failed starting port\n");
 }

 mutex_unlock(&mdev->state_lock);
 return err;
}
