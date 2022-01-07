
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mlx5e_priv {TYPE_1__* ipsec; int mdev; } ;
struct TYPE_2__ {int stats; } ;


 int NUM_IPSEC_HW_COUNTERS ;
 int memset (int *,int ,int) ;
 int mlx5_accel_ipsec_counters_read (int ,int *,int ) ;

void mlx5e_ipsec_update_stats(struct mlx5e_priv *priv)
{
 int ret;

 if (!priv->ipsec)
  return;

 ret = mlx5_accel_ipsec_counters_read(priv->mdev, (u64 *)&priv->ipsec->stats,
          NUM_IPSEC_HW_COUNTERS);
 if (ret)
  memset(&priv->ipsec->stats, 0, sizeof(priv->ipsec->stats));
}
