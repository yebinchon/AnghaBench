
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


 int ESW_OFFLOADS_DEVCOM_UNPAIR ;
 int MLX5_CAP_ESW (TYPE_2__*,int ) ;
 int MLX5_DEVCOM_ESW_OFFLOADS ;
 int merged_eswitch ;
 int mlx5_devcom_send_event (struct mlx5_devcom*,int ,int ,struct mlx5_eswitch*) ;
 int mlx5_devcom_unregister_component (struct mlx5_devcom*,int ) ;

__attribute__((used)) static void esw_offloads_devcom_cleanup(struct mlx5_eswitch *esw)
{
 struct mlx5_devcom *devcom = esw->dev->priv.devcom;

 if (!MLX5_CAP_ESW(esw->dev, merged_eswitch))
  return;

 mlx5_devcom_send_event(devcom, MLX5_DEVCOM_ESW_OFFLOADS,
          ESW_OFFLOADS_DEVCOM_UNPAIR, esw);

 mlx5_devcom_unregister_component(devcom, MLX5_DEVCOM_ESW_OFFLOADS);
}
