
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int EEXIST ;
 int EIO ;
 int PHYSDEV_CONTROL_DD_MASK ;
 int PHYSDEV_CONTROL_FW_RESET_MASK ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 scalar_t__ dump_present (struct be_adapter*) ;
 int lancer_physdev_ctrl (struct be_adapter*,int) ;
 int lancer_wait_idle (struct be_adapter*) ;

int lancer_initiate_dump(struct be_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;
 int status;

 if (dump_present(adapter)) {
  dev_info(dev, "Previous dump not cleared, not forcing dump\n");
  return -EEXIST;
 }


 status = lancer_physdev_ctrl(adapter, PHYSDEV_CONTROL_FW_RESET_MASK |
         PHYSDEV_CONTROL_DD_MASK);
 if (status < 0) {
  dev_err(dev, "FW reset failed\n");
  return status;
 }

 status = lancer_wait_idle(adapter);
 if (status)
  return status;

 if (!dump_present(adapter)) {
  dev_err(dev, "FW dump not generated\n");
  return -EIO;
 }

 return 0;
}
