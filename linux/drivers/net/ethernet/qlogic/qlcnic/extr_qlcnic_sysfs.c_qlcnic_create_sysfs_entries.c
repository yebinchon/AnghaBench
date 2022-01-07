
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int capabilities; } ;
struct TYPE_3__ {struct device dev; } ;


 int QLCNIC_FW_CAPABILITY_BDG ;
 int dev_attr_bridged_mode ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ device_create_file (struct device*,int *) ;

void qlcnic_create_sysfs_entries(struct qlcnic_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;

 if (adapter->ahw->capabilities & QLCNIC_FW_CAPABILITY_BDG)
  if (device_create_file(dev, &dev_attr_bridged_mode))
   dev_warn(dev,
     "failed to create bridged_mode sysfs entry\n");
}
