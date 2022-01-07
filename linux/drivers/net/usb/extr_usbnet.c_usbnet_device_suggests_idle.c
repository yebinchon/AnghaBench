
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* intf; int flags; } ;
struct TYPE_2__ {int needs_remote_wakeup; } ;


 int EVENT_DEVICE_REPORT_IDLE ;
 int test_and_set_bit (int ,int *) ;
 int usb_autopm_put_interface_async (TYPE_1__*) ;

void usbnet_device_suggests_idle(struct usbnet *dev)
{
 if (!test_and_set_bit(EVENT_DEVICE_REPORT_IDLE, &dev->flags)) {
  dev->intf->needs_remote_wakeup = 1;
  usb_autopm_put_interface_async(dev->intf);
 }
}
