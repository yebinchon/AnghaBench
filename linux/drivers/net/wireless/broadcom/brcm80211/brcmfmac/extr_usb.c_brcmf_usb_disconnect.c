
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct brcmf_usbdev_info {int dev_init_done; } ;


 int USB ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_usb_disconnect_cb (struct brcmf_usbdev_info*) ;
 int kfree (struct brcmf_usbdev_info*) ;
 scalar_t__ usb_get_intfdata (struct usb_interface*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void
brcmf_usb_disconnect(struct usb_interface *intf)
{
 struct brcmf_usbdev_info *devinfo;

 brcmf_dbg(USB, "Enter\n");
 devinfo = (struct brcmf_usbdev_info *)usb_get_intfdata(intf);

 if (devinfo) {
  wait_for_completion(&devinfo->dev_init_done);



  if (!usb_get_intfdata(intf))
   goto done;

  brcmf_usb_disconnect_cb(devinfo);
  kfree(devinfo);
 }
done:
 brcmf_dbg(USB, "Exit\n");
}
