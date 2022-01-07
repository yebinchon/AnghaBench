
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_port {int dummy; } ;
struct mlx4_port_info {struct devlink_port devlink_port; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_port_info* port; } ;


 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;

struct devlink_port *mlx4_get_devlink_port(struct mlx4_dev *dev, int port)
{
 struct mlx4_port_info *info = &mlx4_priv(dev)->port[port];

 return &info->devlink_port;
}
