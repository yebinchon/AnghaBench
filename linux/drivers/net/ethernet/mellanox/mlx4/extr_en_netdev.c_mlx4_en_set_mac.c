
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {unsigned char* dev_addr; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int is_valid_ether_addr (int ) ;
 int memcpy (unsigned char*,int ,int ) ;
 int mlx4_en_do_set_mac (struct mlx4_en_priv*,unsigned char*) ;
 int mlx4_en_update_user_mac (struct mlx4_en_priv*,unsigned char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_set_mac(struct net_device *dev, void *addr)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 struct sockaddr *saddr = addr;
 unsigned char new_mac[ETH_ALEN + 2];
 int err;

 if (!is_valid_ether_addr(saddr->sa_data))
  return -EADDRNOTAVAIL;

 mutex_lock(&mdev->state_lock);
 memcpy(new_mac, saddr->sa_data, ETH_ALEN);
 err = mlx4_en_do_set_mac(priv, new_mac);
 if (err)
  goto out;

 memcpy(dev->dev_addr, saddr->sa_data, ETH_ALEN);
 mlx4_en_update_user_mac(priv, new_mac);
out:
 mutex_unlock(&mdev->state_lock);

 return err;
}
