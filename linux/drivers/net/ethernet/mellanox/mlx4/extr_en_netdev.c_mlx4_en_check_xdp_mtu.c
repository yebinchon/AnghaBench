
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {int dummy; } ;


 int MLX4_EN_MAX_XDP_MTU ;
 int en_err (struct mlx4_en_priv*,char*,int,int) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static bool mlx4_en_check_xdp_mtu(struct net_device *dev, int mtu)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 if (mtu > MLX4_EN_MAX_XDP_MTU) {
  en_err(priv, "mtu:%d > max:%d when XDP prog is attached\n",
         mtu, MLX4_EN_MAX_XDP_MTU);
  return 0;
 }

 return 1;
}
