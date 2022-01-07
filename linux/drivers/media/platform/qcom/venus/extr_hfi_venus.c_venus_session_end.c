
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_inst {int core; } ;
struct venus_hfi_device {TYPE_1__* core; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int HFI_CMD_SYS_SESSION_END ;
 int dev_warn (struct device*,char*) ;
 struct venus_hfi_device* to_hfi_priv (int ) ;
 scalar_t__ venus_fw_coverage ;
 int venus_session_cmd (struct venus_inst*,int ) ;
 scalar_t__ venus_sys_set_coverage (struct venus_hfi_device*,scalar_t__) ;

__attribute__((used)) static int venus_session_end(struct venus_inst *inst)
{
 struct venus_hfi_device *hdev = to_hfi_priv(inst->core);
 struct device *dev = hdev->core->dev;

 if (venus_fw_coverage) {
  if (venus_sys_set_coverage(hdev, venus_fw_coverage))
   dev_warn(dev, "fw coverage msg ON failed\n");
 }

 return venus_session_cmd(inst, HFI_CMD_SYS_SESSION_END);
}
