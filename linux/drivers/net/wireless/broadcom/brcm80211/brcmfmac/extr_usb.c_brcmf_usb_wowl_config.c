
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct brcmf_usbdev_info {int wowl_enabled; int dev; } ;


 int USB ;
 int brcmf_dbg (int ,char*,int) ;
 struct brcmf_usbdev_info* brcmf_usb_get_businfo (struct device*) ;
 int device_set_wakeup_enable (int ,int) ;

__attribute__((used)) static void brcmf_usb_wowl_config(struct device *dev, bool enabled)
{
 struct brcmf_usbdev_info *devinfo = brcmf_usb_get_businfo(dev);

 brcmf_dbg(USB, "Configuring WOWL, enabled=%d\n", enabled);
 devinfo->wowl_enabled = enabled;
 if (enabled)
  device_set_wakeup_enable(devinfo->dev, 1);
 else
  device_set_wakeup_enable(devinfo->dev, 0);
}
