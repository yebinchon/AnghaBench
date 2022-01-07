
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* eswitch; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct devlink {int dummy; } ;
struct TYPE_3__ {int mode; } ;


 struct mlx5_core_dev* devlink_priv (struct devlink*) ;
 int esw_mode_to_devlink (int ,int *) ;
 int mlx5_devlink_eswitch_check (struct devlink*) ;

int mlx5_devlink_eswitch_mode_get(struct devlink *devlink, u16 *mode)
{
 struct mlx5_core_dev *dev = devlink_priv(devlink);
 int err;

 err = mlx5_devlink_eswitch_check(devlink);
 if (err)
  return err;

 return esw_mode_to_devlink(dev->priv.eswitch->mode, mode);
}
