
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int query_vnic_env_out; } ;
struct TYPE_4__ {TYPE_1__ vnic; } ;
struct mlx5e_priv {TYPE_2__ stats; int mdev; } ;


 int MLX5E_READ_CTR32_BE (int ,int ,int) ;
 int MLX5E_READ_CTR64_BE (int ,int ,int) ;
 int NUM_VNIC_ENV_DEV_OOB_COUNTERS (int ) ;
 int NUM_VNIC_ENV_STEER_COUNTERS (int ) ;
 int vnic_env_stats_dev_oob_desc ;
 int vnic_env_stats_steer_desc ;

__attribute__((used)) static int mlx5e_grp_vnic_env_fill_stats(struct mlx5e_priv *priv, u64 *data,
      int idx)
{
 int i;

 for (i = 0; i < NUM_VNIC_ENV_STEER_COUNTERS(priv->mdev); i++)
  data[idx++] = MLX5E_READ_CTR64_BE(priv->stats.vnic.query_vnic_env_out,
        vnic_env_stats_steer_desc, i);

 for (i = 0; i < NUM_VNIC_ENV_DEV_OOB_COUNTERS(priv->mdev); i++)
  data[idx++] = MLX5E_READ_CTR32_BE(priv->stats.vnic.query_vnic_env_out,
        vnic_env_stats_dev_oob_desc, i);
 return idx;
}
