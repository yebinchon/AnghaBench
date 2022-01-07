
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ethtool_fecparam {void* fec; void* active_fec; } ;


 int BITS_PER_BYTE ;
 int EOPNOTSUPP ;
 int mlx5e_get_fec_mode (struct mlx5_core_dev*,scalar_t__*,scalar_t__*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 void* pplm2ethtool_fec (int ,int) ;

__attribute__((used)) static int mlx5e_get_fecparam(struct net_device *netdev,
         struct ethtool_fecparam *fecparam)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5_core_dev *mdev = priv->mdev;
 u8 fec_configured = 0;
 u32 fec_active = 0;
 int err;

 err = mlx5e_get_fec_mode(mdev, &fec_active, &fec_configured);

 if (err)
  return err;

 fecparam->active_fec = pplm2ethtool_fec((u_long)fec_active,
      sizeof(u32) * BITS_PER_BYTE);

 if (!fecparam->active_fec)
  return -EOPNOTSUPP;

 fecparam->fec = pplm2ethtool_fec((u_long)fec_configured,
      sizeof(u8) * BITS_PER_BYTE);

 return 0;
}
