
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int mdev; } ;


 int NUM_VNIC_ENV_DEV_OOB_COUNTERS (int ) ;
 int NUM_VNIC_ENV_STEER_COUNTERS (int ) ;

__attribute__((used)) static int mlx5e_grp_vnic_env_get_num_stats(struct mlx5e_priv *priv)
{
 return NUM_VNIC_ENV_STEER_COUNTERS(priv->mdev) +
  NUM_VNIC_ENV_DEV_OOB_COUNTERS(priv->mdev);
}
