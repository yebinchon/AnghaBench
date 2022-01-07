
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int qlcnic_remove_diag_entries (struct qlcnic_adapter*) ;

void qlcnic_82xx_remove_sysfs(struct qlcnic_adapter *adapter)
{
 qlcnic_remove_diag_entries(adapter);
}
