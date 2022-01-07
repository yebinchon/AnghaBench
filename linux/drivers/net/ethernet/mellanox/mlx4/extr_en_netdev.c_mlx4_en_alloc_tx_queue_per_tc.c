
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {scalar_t__ port_up; int prof; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_port_profile {int num_up; int* tx_ring_num; int num_tx_rings_p_up; } ;
struct mlx4_en_dev {int state_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX4_EN_NUM_UP_HIGH ;
 int MLX4_EN_NUM_UP_LOW ;
 size_t TX ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int kfree (struct mlx4_en_priv*) ;
 struct mlx4_en_priv* kzalloc (int,int ) ;
 int memcpy (struct mlx4_en_port_profile*,int ,int) ;
 int mlx4_en_safe_replace_resources (struct mlx4_en_priv*,struct mlx4_en_priv*) ;
 int mlx4_en_setup_tc (struct net_device*,scalar_t__) ;
 int mlx4_en_start_port (struct net_device*) ;
 int mlx4_en_stop_port (struct net_device*,int) ;
 int mlx4_en_try_alloc_resources (struct mlx4_en_priv*,struct mlx4_en_priv*,struct mlx4_en_port_profile*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

int mlx4_en_alloc_tx_queue_per_tc(struct net_device *dev, u8 tc)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_en_port_profile new_prof;
 struct mlx4_en_priv *tmp;
 int port_up = 0;
 int err = 0;

 tmp = kzalloc(sizeof(*tmp), GFP_KERNEL);
 if (!tmp)
  return -ENOMEM;

 mutex_lock(&mdev->state_lock);
 memcpy(&new_prof, priv->prof, sizeof(struct mlx4_en_port_profile));
 new_prof.num_up = (tc == 0) ? MLX4_EN_NUM_UP_LOW :
          MLX4_EN_NUM_UP_HIGH;
 new_prof.tx_ring_num[TX] = new_prof.num_tx_rings_p_up *
       new_prof.num_up;
 err = mlx4_en_try_alloc_resources(priv, tmp, &new_prof, 1);
 if (err)
  goto out;

 if (priv->port_up) {
  port_up = 1;
  mlx4_en_stop_port(dev, 1);
 }

 mlx4_en_safe_replace_resources(priv, tmp);
 if (port_up) {
  err = mlx4_en_start_port(dev);
  if (err) {
   en_err(priv, "Failed starting port for setup TC\n");
   goto out;
  }
 }

 err = mlx4_en_setup_tc(dev, tc);
out:
 mutex_unlock(&mdev->state_lock);
 kfree(tmp);
 return err;
}
