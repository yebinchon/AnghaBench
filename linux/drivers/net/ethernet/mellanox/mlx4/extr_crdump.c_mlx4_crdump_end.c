
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_fw_crdump {int region_crspace; int region_fw_health; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_2__ {struct mlx4_fw_crdump crdump; } ;


 int devlink_region_destroy (int ) ;

void mlx4_crdump_end(struct mlx4_dev *dev)
{
 struct mlx4_fw_crdump *crdump = &dev->persist->crdump;

 devlink_region_destroy(crdump->region_fw_health);
 devlink_region_destroy(crdump->region_crspace);
}
