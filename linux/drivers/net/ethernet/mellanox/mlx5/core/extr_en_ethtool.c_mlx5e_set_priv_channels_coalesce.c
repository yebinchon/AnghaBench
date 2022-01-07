
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num; struct mlx5e_channel** c; } ;
struct mlx5e_priv {TYPE_1__ channels; struct mlx5_core_dev* mdev; } ;
struct TYPE_9__ {int mcq; } ;
struct TYPE_10__ {TYPE_4__ cq; } ;
struct mlx5e_channel {int num_tc; TYPE_5__ rq; TYPE_3__* sq; } ;
struct mlx5_core_dev {int dummy; } ;
struct ethtool_coalesce {int rx_max_coalesced_frames; int rx_coalesce_usecs; int tx_max_coalesced_frames; int tx_coalesce_usecs; } ;
struct TYPE_7__ {int mcq; } ;
struct TYPE_8__ {TYPE_2__ cq; } ;


 int mlx5_core_modify_cq_moderation (struct mlx5_core_dev*,int *,int ,int ) ;

__attribute__((used)) static void
mlx5e_set_priv_channels_coalesce(struct mlx5e_priv *priv, struct ethtool_coalesce *coal)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 int tc;
 int i;

 for (i = 0; i < priv->channels.num; ++i) {
  struct mlx5e_channel *c = priv->channels.c[i];

  for (tc = 0; tc < c->num_tc; tc++) {
   mlx5_core_modify_cq_moderation(mdev,
      &c->sq[tc].cq.mcq,
      coal->tx_coalesce_usecs,
      coal->tx_max_coalesced_frames);
  }

  mlx5_core_modify_cq_moderation(mdev, &c->rq.cq.mcq,
            coal->rx_coalesce_usecs,
            coal->rx_max_coalesced_frames);
 }
}
