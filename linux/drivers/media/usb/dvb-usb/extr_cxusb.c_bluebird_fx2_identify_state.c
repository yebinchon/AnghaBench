
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bDeviceClass; int bDeviceSubClass; int bDeviceProtocol; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct dvb_usb_device_properties {int dummy; } ;
struct dvb_usb_device_description {int dummy; } ;



__attribute__((used)) static int bluebird_fx2_identify_state(struct usb_device *udev,
           struct dvb_usb_device_properties *props,
           struct dvb_usb_device_description **desc,
           int *cold)
{
 int wascold = *cold;

 *cold = udev->descriptor.bDeviceClass == 0xff &&
  udev->descriptor.bDeviceSubClass == 0xff &&
  udev->descriptor.bDeviceProtocol == 0xff;

 if (*cold && !wascold)
  *desc = ((void*)0);

 return 0;
}
