
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_port_info {scalar_t__ port; int * rmap; int devlink_port; int port_mtu_attr; TYPE_3__* dev; int port_attr; } ;
struct TYPE_6__ {TYPE_2__* persist; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int device_remove_file (int *,int *) ;
 int devlink_port_unregister (int *) ;
 int free_irq_cpu_rmap (int *) ;

__attribute__((used)) static void mlx4_cleanup_port_info(struct mlx4_port_info *info)
{
 if (info->port < 0)
  return;

 device_remove_file(&info->dev->persist->pdev->dev, &info->port_attr);
 device_remove_file(&info->dev->persist->pdev->dev,
      &info->port_mtu_attr);
 devlink_port_unregister(&info->devlink_port);





}
