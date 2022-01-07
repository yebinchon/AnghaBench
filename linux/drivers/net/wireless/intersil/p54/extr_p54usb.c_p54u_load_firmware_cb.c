
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device {int dev; } ;
struct p54u_priv {int fw_wait_load; struct firmware const* fw; struct usb_interface* intf; struct usb_device* udev; } ;
struct firmware {int dummy; } ;


 int ENOENT ;
 int complete (int *) ;
 int dev_err (int *,char*,...) ;
 int p54u_driver ;
 int p54u_start_ops (struct p54u_priv*) ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_put_intf (struct usb_interface*) ;
 int usb_unlock_device (struct usb_device*) ;

__attribute__((used)) static void p54u_load_firmware_cb(const struct firmware *firmware,
      void *context)
{
 struct p54u_priv *priv = context;
 struct usb_device *udev = priv->udev;
 struct usb_interface *intf = priv->intf;
 int err;

 if (firmware) {
  priv->fw = firmware;
  err = p54u_start_ops(priv);
 } else {
  err = -ENOENT;
  dev_err(&udev->dev, "Firmware not found.\n");
 }

 complete(&priv->fw_wait_load);




 priv = ((void*)0);

 if (err) {
  dev_err(&intf->dev, "failed to initialize device (%d)\n", err);

  usb_lock_device(udev);
  usb_driver_release_interface(&p54u_driver, intf);
  usb_unlock_device(udev);
 }

 usb_put_intf(intf);
}
