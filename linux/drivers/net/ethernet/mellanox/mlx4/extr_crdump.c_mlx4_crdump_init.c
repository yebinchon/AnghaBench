
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct mlx4_fw_crdump {int snapshot_enable; void* region_fw_health; void* region_crspace; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pdev; struct mlx4_fw_crdump crdump; } ;


 int HEALTH_BUFFER_SIZE ;
 scalar_t__ IS_ERR (void*) ;
 int MAX_NUM_OF_DUMPS_TO_STORE ;
 int PTR_ERR (void*) ;
 void* devlink_region_create (struct devlink*,int ,int ,int ) ;
 int mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int ,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 struct devlink* priv_to_devlink (int ) ;
 int region_cr_space_str ;
 int region_fw_health_str ;

int mlx4_crdump_init(struct mlx4_dev *dev)
{
 struct devlink *devlink = priv_to_devlink(mlx4_priv(dev));
 struct mlx4_fw_crdump *crdump = &dev->persist->crdump;
 struct pci_dev *pdev = dev->persist->pdev;

 crdump->snapshot_enable = 0;


 crdump->region_crspace =
  devlink_region_create(devlink,
          region_cr_space_str,
          MAX_NUM_OF_DUMPS_TO_STORE,
          pci_resource_len(pdev, 0));
 if (IS_ERR(crdump->region_crspace))
  mlx4_warn(dev, "crdump: create devlink region %s err %ld\n",
     region_cr_space_str,
     PTR_ERR(crdump->region_crspace));


 crdump->region_fw_health =
  devlink_region_create(devlink,
          region_fw_health_str,
          MAX_NUM_OF_DUMPS_TO_STORE,
          HEALTH_BUFFER_SIZE);
 if (IS_ERR(crdump->region_fw_health))
  mlx4_warn(dev, "crdump: create devlink region %s err %ld\n",
     region_fw_health_str,
     PTR_ERR(crdump->region_fw_health));

 return 0;
}
