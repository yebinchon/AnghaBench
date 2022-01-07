
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_tc_flow {TYPE_1__* priv; } ;
struct mlx5_eswitch {int dummy; } ;
struct mlx5_devcom {int dummy; } ;
struct TYPE_4__ {struct mlx5_devcom* devcom; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_3__ {struct mlx5_core_dev* mdev; } ;


 int MLX5_DEVCOM_ESW_OFFLOADS ;
 int __mlx5e_tc_del_fdb_peer_flow (struct mlx5e_tc_flow*) ;
 struct mlx5_eswitch* mlx5_devcom_get_peer_data (struct mlx5_devcom*,int ) ;
 int mlx5_devcom_release_peer_data (struct mlx5_devcom*,int ) ;

__attribute__((used)) static void mlx5e_tc_del_fdb_peer_flow(struct mlx5e_tc_flow *flow)
{
 struct mlx5_core_dev *dev = flow->priv->mdev;
 struct mlx5_devcom *devcom = dev->priv.devcom;
 struct mlx5_eswitch *peer_esw;

 peer_esw = mlx5_devcom_get_peer_data(devcom, MLX5_DEVCOM_ESW_OFFLOADS);
 if (!peer_esw)
  return;

 __mlx5e_tc_del_fdb_peer_flow(flow);
 mlx5_devcom_release_peer_data(devcom, MLX5_DEVCOM_ESW_OFFLOADS);
}
