
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int peer_mutex; int peer_flows; } ;
struct mlx5_eswitch {TYPE_3__* dev; TYPE_2__ offloads; } ;
struct mlx5_devcom {int dummy; } ;
struct TYPE_4__ {struct mlx5_devcom* devcom; } ;
struct TYPE_6__ {TYPE_1__ priv; } ;


 int ESW_OFFLOADS_DEVCOM_PAIR ;
 int INIT_LIST_HEAD (int *) ;
 int MLX5_CAP_ESW (TYPE_3__*,int ) ;
 int MLX5_DEVCOM_ESW_OFFLOADS ;
 int merged_eswitch ;
 int mlx5_devcom_register_component (struct mlx5_devcom*,int ,int ,struct mlx5_eswitch*) ;
 int mlx5_devcom_send_event (struct mlx5_devcom*,int ,int ,struct mlx5_eswitch*) ;
 int mlx5_esw_offloads_devcom_event ;
 int mutex_init (int *) ;

__attribute__((used)) static void esw_offloads_devcom_init(struct mlx5_eswitch *esw)
{
 struct mlx5_devcom *devcom = esw->dev->priv.devcom;

 INIT_LIST_HEAD(&esw->offloads.peer_flows);
 mutex_init(&esw->offloads.peer_mutex);

 if (!MLX5_CAP_ESW(esw->dev, merged_eswitch))
  return;

 mlx5_devcom_register_component(devcom,
           MLX5_DEVCOM_ESW_OFFLOADS,
           mlx5_esw_offloads_devcom_event,
           esw);

 mlx5_devcom_send_event(devcom,
          MLX5_DEVCOM_ESW_OFFLOADS,
          ESW_OFFLOADS_DEVCOM_PAIR, esw);
}
