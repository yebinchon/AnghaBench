
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {TYPE_2__* actconfig; } ;
struct r8152 {struct usb_device* udev; } ;
struct TYPE_3__ {int bmAttributes; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int USB_CONFIG_ATT_WAKEUP ;

__attribute__((used)) static bool rtl_can_wakeup(struct r8152 *tp)
{
 struct usb_device *udev = tp->udev;

 return (udev->actconfig->desc.bmAttributes & USB_CONFIG_ATT_WAKEUP);
}
