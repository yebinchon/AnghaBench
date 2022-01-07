
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int QLCNIC_CRB_DRV_IDC_VER ;
 scalar_t__ QLCNIC_DRV_IDC_VER ;
 scalar_t__ QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int dev_warn (int *,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int qlcnic_check_idc_ver(struct qlcnic_adapter *adapter)
{
 u32 val = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DRV_IDC_VER);

 if (val != QLCNIC_DRV_IDC_VER) {
  dev_warn(&adapter->pdev->dev, "IDC Version mismatch, driver's"
   " idc ver = %x; reqd = %x\n", QLCNIC_DRV_IDC_VER, val);
 }

 return 0;
}
