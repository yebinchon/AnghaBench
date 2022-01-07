
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct fwentry {int intfw_size; int intfw; int board_type; } ;


 int DBG_DEVSTART ;
 int HZ ;
 int at76_dbg (int ,char*) ;
 int at76_is_505a (int ) ;
 int at76_remap (struct usb_device*) ;
 int at76_usbdfu_download (struct usb_device*,int ,int ,int) ;
 int dev_err (int *,char*,int) ;
 int schedule_timeout_interruptible (int) ;
 int usb_reset_device (struct usb_device*) ;

__attribute__((used)) static int at76_load_internal_fw(struct usb_device *udev, struct fwentry *fwe)
{
 int ret;
 int need_remap = !at76_is_505a(fwe->board_type);

 ret = at76_usbdfu_download(udev, fwe->intfw, fwe->intfw_size,
       need_remap ? 0 : 2 * HZ);

 if (ret < 0) {
  dev_err(&udev->dev,
   "downloading internal fw failed with %d\n", ret);
  goto exit;
 }

 at76_dbg(DBG_DEVSTART, "sending REMAP");


 if (need_remap) {
  ret = at76_remap(udev);
  if (ret < 0) {
   dev_err(&udev->dev,
    "sending REMAP failed with %d\n", ret);
   goto exit;
  }
 }

 at76_dbg(DBG_DEVSTART, "sleeping for 2 seconds");
 schedule_timeout_interruptible(2 * HZ + 1);
 usb_reset_device(udev);

exit:
 return ret;
}
