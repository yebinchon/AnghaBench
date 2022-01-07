
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* eswitch; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct devlink {int dummy; } ;
struct TYPE_3__ {scalar_t__ mode; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_PORT_TYPE_ETH ;
 int MLX5_ESWITCH_MANAGER (struct mlx5_core_dev*) ;
 scalar_t__ MLX5_ESWITCH_NONE ;
 struct mlx5_core_dev* devlink_priv (struct devlink*) ;
 int mlx5_core_is_ecpf_esw_manager (struct mlx5_core_dev*) ;
 int port_type ;

__attribute__((used)) static int mlx5_devlink_eswitch_check(struct devlink *devlink)
{
 struct mlx5_core_dev *dev = devlink_priv(devlink);

 if (MLX5_CAP_GEN(dev, port_type) != MLX5_CAP_PORT_TYPE_ETH)
  return -EOPNOTSUPP;

 if(!MLX5_ESWITCH_MANAGER(dev))
  return -EPERM;

 if (dev->priv.eswitch->mode == MLX5_ESWITCH_NONE &&
     !mlx5_core_is_ecpf_esw_manager(dev))
  return -EOPNOTSUPP;

 return 0;
}
