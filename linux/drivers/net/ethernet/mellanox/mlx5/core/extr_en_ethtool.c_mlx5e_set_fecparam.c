
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ethtool_fecparam {int fec; } ;


 int ARRAY_SIZE (int*) ;
 int mlx5_toggle_port_link (struct mlx5_core_dev*) ;
 int mlx5e_set_fec_mode (struct mlx5_core_dev*,int) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int* pplm_fec_2_ethtool ;

__attribute__((used)) static int mlx5e_set_fecparam(struct net_device *netdev,
         struct ethtool_fecparam *fecparam)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5_core_dev *mdev = priv->mdev;
 u8 fec_policy = 0;
 int mode;
 int err;

 for (mode = 0; mode < ARRAY_SIZE(pplm_fec_2_ethtool); mode++) {
  if (!(pplm_fec_2_ethtool[mode] & fecparam->fec))
   continue;
  fec_policy |= (1 << mode);
  break;
 }

 err = mlx5e_set_fec_mode(mdev, fec_policy);

 if (err)
  return err;

 mlx5_toggle_port_link(mdev);

 return 0;
}
