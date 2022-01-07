
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_device {int late_init_done; TYPE_1__* asic_funcs; int work_heartbeat; scalar_t__ heartbeat; int work_freq; } ;
struct TYPE_2__ {int (* late_fini ) (struct hl_device*) ;} ;


 int cancel_delayed_work_sync (int *) ;
 int stub1 (struct hl_device*) ;

__attribute__((used)) static void device_late_fini(struct hl_device *hdev)
{
 if (!hdev->late_init_done)
  return;

 cancel_delayed_work_sync(&hdev->work_freq);
 if (hdev->heartbeat)
  cancel_delayed_work_sync(&hdev->work_heartbeat);

 if (hdev->asic_funcs->late_fini)
  hdev->asic_funcs->late_fini(hdev);

 hdev->late_init_done = 0;
}
