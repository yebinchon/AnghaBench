
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_info_args {int op; } ;
struct hl_fpriv {struct hl_device* hdev; } ;
struct hl_device {int in_reset; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int ENOTTY ;







 scalar_t__ atomic_read (int *) ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn_ratelimited (struct device*,char*,char*) ;
 int device_status_info (struct hl_device*,struct hl_info_args*) ;
 int device_utilization (struct hl_device*,struct hl_info_args*) ;
 int dram_usage_info (struct hl_fpriv*,struct hl_info_args*) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 int hw_events_info (struct hl_device*,int,struct hl_info_args*) ;
 int hw_idle (struct hl_device*,struct hl_info_args*) ;
 int hw_ip_info (struct hl_device*,struct hl_info_args*) ;

__attribute__((used)) static int _hl_info_ioctl(struct hl_fpriv *hpriv, void *data,
    struct device *dev)
{
 struct hl_info_args *args = data;
 struct hl_device *hdev = hpriv->hdev;
 int rc;





 switch (args->op) {
 case 128:
  return hw_ip_info(hdev, args);

 case 134:
  return device_status_info(hdev, args);

 default:
  break;
 }

 if (hl_device_disabled_or_in_reset(hdev)) {
  dev_warn_ratelimited(dev,
   "Device is %s. Can't execute INFO IOCTL\n",
   atomic_read(&hdev->in_reset) ? "in_reset" : "disabled");
  return -EBUSY;
 }

 switch (args->op) {
 case 131:
  rc = hw_events_info(hdev, 0, args);
  break;

 case 132:
  rc = dram_usage_info(hpriv, args);
  break;

 case 129:
  rc = hw_idle(hdev, args);
  break;

 case 133:
  rc = device_utilization(hdev, args);
  break;

 case 130:
  rc = hw_events_info(hdev, 1, args);
  break;

 default:
  dev_err(dev, "Invalid request %d\n", args->op);
  rc = -ENOTTY;
  break;
 }

 return rc;
}
