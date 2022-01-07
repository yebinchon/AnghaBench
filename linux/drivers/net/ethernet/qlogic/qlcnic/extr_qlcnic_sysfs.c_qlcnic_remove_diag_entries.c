
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
 int device_remove_bin_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_remove_diag_entries(struct qlcnic_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;

 device_remove_bin_file(dev, &bin_attr_port_stats);

 if (adapter->ahw->op_mode == QLCNIC_NON_PRIV_FUNC)
  return;
 device_remove_file(dev, &dev_attr_diag_mode);
 device_remove_bin_file(dev, &bin_attr_crb);
 device_remove_bin_file(dev, &bin_attr_mem);

 if (test_bit(__QLCNIC_MAINTENANCE_MODE, &adapter->state))
  return;

 device_remove_bin_file(dev, &bin_attr_pci_config);
 device_remove_file(dev, &dev_attr_beacon);
 if (!(adapter->flags & QLCNIC_ESWITCH_ENABLED))
  return;
 device_remove_bin_file(dev, &bin_attr_esw_config);
 if (adapter->ahw->op_mode != QLCNIC_MGMT_FUNC)
  return;
 device_remove_bin_file(dev, &bin_attr_npar_config);
 device_remove_bin_file(dev, &bin_attr_pm_config);
 device_remove_bin_file(dev, &bin_attr_esw_stats);
}
