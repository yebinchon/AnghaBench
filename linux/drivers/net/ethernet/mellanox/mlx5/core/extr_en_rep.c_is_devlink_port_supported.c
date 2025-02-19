
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_rep_priv {TYPE_2__* rep; } ;
struct TYPE_3__ {int eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct TYPE_4__ {scalar_t__ vport; } ;


 scalar_t__ MLX5_VPORT_PF ;
 scalar_t__ MLX5_VPORT_UPLINK ;
 scalar_t__ mlx5_eswitch_is_vf_vport (int ,scalar_t__) ;

__attribute__((used)) static bool
is_devlink_port_supported(const struct mlx5_core_dev *dev,
     const struct mlx5e_rep_priv *rpriv)
{
 return rpriv->rep->vport == MLX5_VPORT_UPLINK ||
        rpriv->rep->vport == MLX5_VPORT_PF ||
        mlx5_eswitch_is_vf_vport(dev->priv.eswitch, rpriv->rep->vport);
}
