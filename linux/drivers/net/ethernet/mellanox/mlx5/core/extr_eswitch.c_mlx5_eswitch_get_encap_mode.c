
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
typedef enum devlink_eswitch_encap_mode { ____Placeholder_devlink_eswitch_encap_mode } devlink_eswitch_encap_mode ;


 int DEVLINK_ESWITCH_ENCAP_MODE_NONE ;
 scalar_t__ ESW_ALLOWED (struct mlx5_eswitch*) ;

enum devlink_eswitch_encap_mode
mlx5_eswitch_get_encap_mode(const struct mlx5_core_dev *dev)
{
 struct mlx5_eswitch *esw;

 esw = dev->priv.eswitch;
 return ESW_ALLOWED(esw) ? esw->offloads.encap :
  DEVLINK_ESWITCH_ENCAP_MODE_NONE;
}
