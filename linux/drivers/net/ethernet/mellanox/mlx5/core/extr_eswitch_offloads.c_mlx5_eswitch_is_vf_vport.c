
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mlx5_eswitch {TYPE_3__* dev; } ;
struct TYPE_4__ {scalar_t__ max_vfs; } ;
struct TYPE_5__ {TYPE_1__ sriov; } ;
struct TYPE_6__ {TYPE_2__ priv; } ;


 scalar_t__ MLX5_VPORT_FIRST_VF ;

bool mlx5_eswitch_is_vf_vport(const struct mlx5_eswitch *esw, u16 vport_num)
{
 return vport_num >= MLX5_VPORT_FIRST_VF &&
        vport_num <= esw->dev->priv.sriov.max_vfs;
}
