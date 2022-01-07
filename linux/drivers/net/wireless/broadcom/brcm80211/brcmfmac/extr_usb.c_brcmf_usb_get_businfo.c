
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct brcmf_usbdev_info {int dummy; } ;
struct TYPE_2__ {struct brcmf_usbdev_info* devinfo; } ;


 TYPE_1__* brcmf_usb_get_buspub (struct device*) ;

__attribute__((used)) static struct brcmf_usbdev_info *brcmf_usb_get_businfo(struct device *dev)
{
 return brcmf_usb_get_buspub(dev)->devinfo;
}
