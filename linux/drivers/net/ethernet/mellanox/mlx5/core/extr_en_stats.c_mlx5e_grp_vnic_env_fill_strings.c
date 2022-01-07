
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5e_priv {int mdev; } ;
struct TYPE_4__ {int format; } ;
struct TYPE_3__ {int format; } ;


 int ETH_GSTRING_LEN ;
 int NUM_VNIC_ENV_DEV_OOB_COUNTERS (int ) ;
 int NUM_VNIC_ENV_STEER_COUNTERS (int ) ;
 int strcpy (int *,int ) ;
 TYPE_2__* vnic_env_stats_dev_oob_desc ;
 TYPE_1__* vnic_env_stats_steer_desc ;

__attribute__((used)) static int mlx5e_grp_vnic_env_fill_strings(struct mlx5e_priv *priv, u8 *data,
        int idx)
{
 int i;

 for (i = 0; i < NUM_VNIC_ENV_STEER_COUNTERS(priv->mdev); i++)
  strcpy(data + (idx++) * ETH_GSTRING_LEN,
         vnic_env_stats_steer_desc[i].format);

 for (i = 0; i < NUM_VNIC_ENV_DEV_OOB_COUNTERS(priv->mdev); i++)
  strcpy(data + (idx++) * ETH_GSTRING_LEN,
         vnic_env_stats_dev_oob_desc[i].format);
 return idx;
}
