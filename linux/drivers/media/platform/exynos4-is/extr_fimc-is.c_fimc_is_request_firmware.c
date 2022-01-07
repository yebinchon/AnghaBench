
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fimc_is {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int FW_ACTION_HOTPLUG ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int fimc_is_load_firmware ;
 int request_firmware_nowait (int ,int ,char const*,int *,int ,struct fimc_is*,int ) ;

__attribute__((used)) static int fimc_is_request_firmware(struct fimc_is *is, const char *fw_name)
{
 return request_firmware_nowait(THIS_MODULE,
    FW_ACTION_HOTPLUG, fw_name, &is->pdev->dev,
    GFP_KERNEL, is, fimc_is_load_firmware);
}
