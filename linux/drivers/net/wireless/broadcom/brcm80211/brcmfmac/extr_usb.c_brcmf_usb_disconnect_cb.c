
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bus; } ;
struct brcmf_usbdev_info {TYPE_1__ bus_pub; int dev; } ;


 int USB ;
 int brcmf_dbg (int ,char*,struct brcmf_usbdev_info*) ;
 int brcmf_detach (int ) ;
 int brcmf_free (int ) ;
 int brcmf_usb_detach (struct brcmf_usbdev_info*) ;
 int kfree (int ) ;

__attribute__((used)) static void
brcmf_usb_disconnect_cb(struct brcmf_usbdev_info *devinfo)
{
 if (!devinfo)
  return;
 brcmf_dbg(USB, "Enter, bus_pub %p\n", devinfo);

 brcmf_detach(devinfo->dev);
 brcmf_free(devinfo->dev);
 kfree(devinfo->bus_pub.bus);
 brcmf_usb_detach(devinfo);
}
