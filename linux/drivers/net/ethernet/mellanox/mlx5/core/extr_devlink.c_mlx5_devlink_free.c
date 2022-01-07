
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int dummy; } ;


 int devlink_free (struct devlink*) ;

void mlx5_devlink_free(struct devlink *devlink)
{
 devlink_free(devlink);
}
