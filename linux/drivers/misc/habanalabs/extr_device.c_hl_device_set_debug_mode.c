
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_device {int in_debug; int debug_lock; int dev; TYPE_1__* asic_funcs; } ;
struct TYPE_2__ {int (* halt_coresight ) (struct hl_device*) ;} ;


 int EFAULT ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct hl_device*) ;

int hl_device_set_debug_mode(struct hl_device *hdev, bool enable)
{
 int rc = 0;

 mutex_lock(&hdev->debug_lock);

 if (!enable) {
  if (!hdev->in_debug) {
   dev_err(hdev->dev,
    "Failed to disable debug mode because device was not in debug mode\n");
   rc = -EFAULT;
   goto out;
  }

  hdev->asic_funcs->halt_coresight(hdev);
  hdev->in_debug = 0;

  goto out;
 }

 if (hdev->in_debug) {
  dev_err(hdev->dev,
   "Failed to enable debug mode because device is already in debug mode\n");
  rc = -EFAULT;
  goto out;
 }

 hdev->in_debug = 1;

out:
 mutex_unlock(&hdev->debug_lock);

 return rc;
}
