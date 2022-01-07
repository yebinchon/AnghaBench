
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;


 int mlx5e_hwstamp_get (struct mlx5e_priv*,struct ifreq*) ;
 int mlx5e_hwstamp_set (struct mlx5e_priv*,struct ifreq*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 switch (cmd) {
 case 128:
  return mlx5e_hwstamp_set(priv, ifr);
 case 129:
  return mlx5e_hwstamp_get(priv, ifr);
 default:
  return -EOPNOTSUPP;
 }
}
