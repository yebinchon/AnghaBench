
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int encap; } ;
struct mlx5_eswitch {TYPE_2__ offloads; } ;
struct TYPE_3__ {struct mlx5_eswitch* eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct devlink {int dummy; } ;
typedef enum devlink_eswitch_encap_mode { ____Placeholder_devlink_eswitch_encap_mode } devlink_eswitch_encap_mode ;


 struct mlx5_core_dev* devlink_priv (struct devlink*) ;
 int mlx5_devlink_eswitch_check (struct devlink*) ;

int mlx5_devlink_eswitch_encap_mode_get(struct devlink *devlink,
     enum devlink_eswitch_encap_mode *encap)
{
 struct mlx5_core_dev *dev = devlink_priv(devlink);
 struct mlx5_eswitch *esw = dev->priv.eswitch;
 int err;

 err = mlx5_devlink_eswitch_check(devlink);
 if (err)
  return err;

 *encap = esw->offloads.encap;
 return 0;
}
