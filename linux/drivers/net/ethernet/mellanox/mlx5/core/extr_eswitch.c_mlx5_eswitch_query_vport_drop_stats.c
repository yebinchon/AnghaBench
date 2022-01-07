
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct mlx5_vport_drop_stats {int tx_dropped; int rx_dropped; } ;
struct TYPE_6__ {scalar_t__ drop_counter; } ;
struct TYPE_5__ {scalar_t__ drop_counter; } ;
struct mlx5_vport {int vport; TYPE_3__ ingress; TYPE_2__ egress; int enabled; } ;
struct mlx5_eswitch {scalar_t__ mode; } ;
struct TYPE_4__ {struct mlx5_eswitch* eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_ESWITCH_LEGACY ;
 int mlx5_fc_query (struct mlx5_core_dev*,scalar_t__,int *,scalar_t__*) ;
 int mlx5_query_vport_down_stats (struct mlx5_core_dev*,int ,int,scalar_t__*,scalar_t__*) ;
 int receive_discard_vport_down ;
 int transmit_discard_vport_down ;

__attribute__((used)) static int mlx5_eswitch_query_vport_drop_stats(struct mlx5_core_dev *dev,
            struct mlx5_vport *vport,
            struct mlx5_vport_drop_stats *stats)
{
 struct mlx5_eswitch *esw = dev->priv.eswitch;
 u64 rx_discard_vport_down, tx_discard_vport_down;
 u64 bytes = 0;
 int err = 0;

 if (!vport->enabled || esw->mode != MLX5_ESWITCH_LEGACY)
  return 0;

 if (vport->egress.drop_counter)
  mlx5_fc_query(dev, vport->egress.drop_counter,
         &stats->rx_dropped, &bytes);

 if (vport->ingress.drop_counter)
  mlx5_fc_query(dev, vport->ingress.drop_counter,
         &stats->tx_dropped, &bytes);

 if (!MLX5_CAP_GEN(dev, receive_discard_vport_down) &&
     !MLX5_CAP_GEN(dev, transmit_discard_vport_down))
  return 0;

 err = mlx5_query_vport_down_stats(dev, vport->vport, 1,
       &rx_discard_vport_down,
       &tx_discard_vport_down);
 if (err)
  return err;

 if (MLX5_CAP_GEN(dev, receive_discard_vport_down))
  stats->rx_dropped += rx_discard_vport_down;
 if (MLX5_CAP_GEN(dev, transmit_discard_vport_down))
  stats->tx_dropped += tx_discard_vport_down;

 return 0;
}
