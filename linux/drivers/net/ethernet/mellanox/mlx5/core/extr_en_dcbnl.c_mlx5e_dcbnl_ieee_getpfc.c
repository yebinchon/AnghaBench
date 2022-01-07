
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int cable_len; } ;
struct mlx5e_pport_stats {int dummy; } ;
struct TYPE_3__ {struct mlx5e_pport_stats pport; } ;
struct mlx5e_priv {TYPE_2__ dcbx; TYPE_1__ stats; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ieee_pfc {int pfc_en; int delay; void** indications; void** requests; scalar_t__ pfc_cap; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 scalar_t__ MLX5_BUFFER_SUPPORTED (struct mlx5_core_dev*) ;
 void* PPORT_PER_PRIO_GET (struct mlx5e_pport_stats*,int,int ) ;
 scalar_t__ mlx5_max_tc (struct mlx5_core_dev*) ;
 int mlx5_query_port_pfc (struct mlx5_core_dev*,int *,int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int rx_pause ;
 int tx_pause ;

__attribute__((used)) static int mlx5e_dcbnl_ieee_getpfc(struct net_device *dev,
       struct ieee_pfc *pfc)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5_core_dev *mdev = priv->mdev;
 struct mlx5e_pport_stats *pstats = &priv->stats.pport;
 int i;

 pfc->pfc_cap = mlx5_max_tc(mdev) + 1;
 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  pfc->requests[i] = PPORT_PER_PRIO_GET(pstats, i, tx_pause);
  pfc->indications[i] = PPORT_PER_PRIO_GET(pstats, i, rx_pause);
 }

 if (MLX5_BUFFER_SUPPORTED(mdev))
  pfc->delay = priv->dcbx.cable_len;

 return mlx5_query_port_pfc(mdev, &pfc->pfc_en, ((void*)0));
}
