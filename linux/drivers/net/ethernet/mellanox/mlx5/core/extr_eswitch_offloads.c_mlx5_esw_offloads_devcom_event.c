
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_eswitch {TYPE_2__* dev; } ;
struct mlx5_devcom {int dummy; } ;
struct TYPE_3__ {struct mlx5_devcom* devcom; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;




 int MLX5_DEVCOM_ESW_OFFLOADS ;
 int mlx5_core_err (TYPE_2__*,char*,int,int) ;
 int mlx5_devcom_is_paired (struct mlx5_devcom*,int ) ;
 int mlx5_devcom_set_paired (struct mlx5_devcom*,int ,int) ;
 int mlx5_esw_offloads_pair (struct mlx5_eswitch*,struct mlx5_eswitch*) ;
 int mlx5_esw_offloads_set_ns_peer (struct mlx5_eswitch*,struct mlx5_eswitch*,int) ;
 int mlx5_esw_offloads_unpair (struct mlx5_eswitch*) ;
 int mlx5_eswitch_vport_match_metadata_enabled (struct mlx5_eswitch*) ;

__attribute__((used)) static int mlx5_esw_offloads_devcom_event(int event,
       void *my_data,
       void *event_data)
{
 struct mlx5_eswitch *esw = my_data;
 struct mlx5_devcom *devcom = esw->dev->priv.devcom;
 struct mlx5_eswitch *peer_esw = event_data;
 int err;

 switch (event) {
 case 129:
  if (mlx5_eswitch_vport_match_metadata_enabled(esw) !=
      mlx5_eswitch_vport_match_metadata_enabled(peer_esw))
   break;

  err = mlx5_esw_offloads_set_ns_peer(esw, peer_esw, 1);
  if (err)
   goto err_out;
  err = mlx5_esw_offloads_pair(esw, peer_esw);
  if (err)
   goto err_peer;

  err = mlx5_esw_offloads_pair(peer_esw, esw);
  if (err)
   goto err_pair;

  mlx5_devcom_set_paired(devcom, MLX5_DEVCOM_ESW_OFFLOADS, 1);
  break;

 case 128:
  if (!mlx5_devcom_is_paired(devcom, MLX5_DEVCOM_ESW_OFFLOADS))
   break;

  mlx5_devcom_set_paired(devcom, MLX5_DEVCOM_ESW_OFFLOADS, 0);
  mlx5_esw_offloads_unpair(peer_esw);
  mlx5_esw_offloads_unpair(esw);
  mlx5_esw_offloads_set_ns_peer(esw, peer_esw, 0);
  break;
 }

 return 0;

err_pair:
 mlx5_esw_offloads_unpair(esw);
err_peer:
 mlx5_esw_offloads_set_ns_peer(esw, peer_esw, 0);
err_out:
 mlx5_core_err(esw->dev, "esw offloads devcom event failure, event %u err %d",
        event, err);
 return err;
}
