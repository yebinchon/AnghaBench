
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {int flags; TYPE_2__* ahw; int state; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ op_mode; } ;
struct TYPE_3__ {struct device dev; } ;


 int QLCNIC_ESWITCH_ENABLED ;
 scalar_t__ QLCNIC_MGMT_FUNC ;
 scalar_t__ QLCNIC_NON_PRIV_FUNC ;
 int __QLCNIC_MAINTENANCE_MODE ;
 int bin_attr_crb ;
 int bin_attr_esw_config ;
 int bin_attr_esw_stats ;
 int bin_attr_mem ;
 int bin_attr_npar_config ;
 int bin_attr_pci_config ;
 int bin_attr_pm_config ;
 int bin_attr_port_stats ;
 int dev_attr_beacon ;
 int dev_attr_diag_mode ;
 int dev_info (struct device*,char*) ;
 scalar_t__ device_create_bin_file (struct device*,int *) ;
 scalar_t__ device_create_file (struct device*,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_create_diag_entries(struct qlcnic_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;

 if (device_create_bin_file(dev, &bin_attr_port_stats))
  dev_info(dev, "failed to create port stats sysfs entry");

 if (adapter->ahw->op_mode == QLCNIC_NON_PRIV_FUNC)
  return;
 if (device_create_file(dev, &dev_attr_diag_mode))
  dev_info(dev, "failed to create diag_mode sysfs entry\n");
 if (device_create_bin_file(dev, &bin_attr_crb))
  dev_info(dev, "failed to create crb sysfs entry\n");
 if (device_create_bin_file(dev, &bin_attr_mem))
  dev_info(dev, "failed to create mem sysfs entry\n");

 if (test_bit(__QLCNIC_MAINTENANCE_MODE, &adapter->state))
  return;

 if (device_create_bin_file(dev, &bin_attr_pci_config))
  dev_info(dev, "failed to create pci config sysfs entry");

 if (device_create_file(dev, &dev_attr_beacon))
  dev_info(dev, "failed to create beacon sysfs entry");

 if (!(adapter->flags & QLCNIC_ESWITCH_ENABLED))
  return;
 if (device_create_bin_file(dev, &bin_attr_esw_config))
  dev_info(dev, "failed to create esw config sysfs entry");
 if (adapter->ahw->op_mode != QLCNIC_MGMT_FUNC)
  return;
 if (device_create_bin_file(dev, &bin_attr_npar_config))
  dev_info(dev, "failed to create npar config sysfs entry");
 if (device_create_bin_file(dev, &bin_attr_pm_config))
  dev_info(dev, "failed to create pm config sysfs entry");
 if (device_create_bin_file(dev, &bin_attr_esw_stats))
  dev_info(dev, "failed to create eswitch stats sysfs entry");
}
