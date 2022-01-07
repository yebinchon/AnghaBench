
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int da; } ;
struct TYPE_6__ {int da; } ;
struct venus_hfi_device {TYPE_1__ sfr; TYPE_3__ ifaceq_table; TYPE_2__* core; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device* dev; } ;


 int CPU_CS_SCIACMDARG1 ;
 int CPU_CS_SCIACMDARG2 ;
 int SFR_ADDR ;
 int SHARED_QSIZE ;
 int UC_REGION_ADDR ;
 int UC_REGION_SIZE ;
 int dev_err (struct device*,char*) ;
 int venus_boot_core (struct venus_hfi_device*) ;
 int venus_hwversion (struct venus_hfi_device*) ;
 int venus_set_registers (struct venus_hfi_device*) ;
 int venus_writel (struct venus_hfi_device*,int ,int) ;

__attribute__((used)) static int venus_run(struct venus_hfi_device *hdev)
{
 struct device *dev = hdev->core->dev;
 int ret;





 venus_set_registers(hdev);

 venus_writel(hdev, UC_REGION_ADDR, hdev->ifaceq_table.da);
 venus_writel(hdev, UC_REGION_SIZE, SHARED_QSIZE);
 venus_writel(hdev, CPU_CS_SCIACMDARG2, hdev->ifaceq_table.da);
 venus_writel(hdev, CPU_CS_SCIACMDARG1, 0x01);
 if (hdev->sfr.da)
  venus_writel(hdev, SFR_ADDR, hdev->sfr.da);

 ret = venus_boot_core(hdev);
 if (ret) {
  dev_err(dev, "failed to reset venus core\n");
  return ret;
 }

 venus_hwversion(hdev);

 return 0;
}
