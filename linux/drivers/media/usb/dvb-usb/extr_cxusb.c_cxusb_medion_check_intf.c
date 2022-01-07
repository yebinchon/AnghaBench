
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int num_altsetting; int usb_dev; TYPE_2__* altsetting; } ;
struct TYPE_3__ {int bAlternateSetting; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 scalar_t__ cxusb_medion_check_altsetting (TYPE_2__*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static bool cxusb_medion_check_intf(struct usb_interface *intf)
{
 unsigned int ctr;

 if (intf->num_altsetting < 2) {
  dev_err(intf->usb_dev, "no alternate interface");

  return 0;
 }

 for (ctr = 0; ctr < intf->num_altsetting; ctr++) {
  if (intf->altsetting[ctr].desc.bAlternateSetting != 1)
   continue;

  if (cxusb_medion_check_altsetting(&intf->altsetting[ctr]))
   return 1;

  break;
 }

 dev_err(intf->usb_dev, "no iso interface");

 return 0;
}
