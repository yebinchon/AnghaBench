
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwtstamp_config {int dummy; } ;
struct mlx5e_priv {int mdev; struct hwtstamp_config tstamp; } ;
struct ifreq {int ifr_data; } ;


 int EFAULT ;
 int EOPNOTSUPP ;
 int MLX5_CAP_GEN (int ,int ) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int device_frequency_khz ;

int mlx5e_hwstamp_get(struct mlx5e_priv *priv, struct ifreq *ifr)
{
 struct hwtstamp_config *cfg = &priv->tstamp;

 if (!MLX5_CAP_GEN(priv->mdev, device_frequency_khz))
  return -EOPNOTSUPP;

 return copy_to_user(ifr->ifr_data, cfg, sizeof(*cfg)) ? -EFAULT : 0;
}
