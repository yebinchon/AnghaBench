
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {int hwtstamp_config; } ;
struct ifreq {int ifr_data; } ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,int *,int) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_hwtstamp_get(struct net_device *dev, struct ifreq *ifr)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 return copy_to_user(ifr->ifr_data, &priv->hwtstamp_config,
       sizeof(priv->hwtstamp_config)) ? -EFAULT : 0;
}
