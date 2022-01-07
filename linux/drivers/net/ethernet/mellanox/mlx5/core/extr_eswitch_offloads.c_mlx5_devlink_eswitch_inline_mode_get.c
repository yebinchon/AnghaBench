
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int inline_mode; } ;
struct mlx5_eswitch {TYPE_2__ offloads; } ;
struct TYPE_3__ {struct mlx5_eswitch* eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct devlink {int dummy; } ;


 struct mlx5_core_dev* devlink_priv (struct devlink*) ;
 int esw_inline_mode_to_devlink (int ,int *) ;
 int mlx5_devlink_eswitch_check (struct devlink*) ;

int mlx5_devlink_eswitch_inline_mode_get(struct devlink *devlink, u8 *mode)
{
 struct mlx5_core_dev *dev = devlink_priv(devlink);
 struct mlx5_eswitch *esw = dev->priv.eswitch;
 int err;

 err = mlx5_devlink_eswitch_check(devlink);
 if (err)
  return err;

 return esw_inline_mode_to_devlink(esw->offloads.inline_mode, mode);
}
