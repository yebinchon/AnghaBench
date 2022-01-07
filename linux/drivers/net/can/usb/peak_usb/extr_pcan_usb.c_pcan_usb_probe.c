
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {struct usb_host_interface* altsetting; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;


 int ENODEV ;





__attribute__((used)) static int pcan_usb_probe(struct usb_interface *intf)
{
 struct usb_host_interface *if_desc;
 int i;

 if_desc = intf->altsetting;


 for (i = 0; i < if_desc->desc.bNumEndpoints; i++) {
  struct usb_endpoint_descriptor *ep = &if_desc->endpoint[i].desc;

  switch (ep->bEndpointAddress) {
  case 130:
  case 131:
  case 128:
  case 129:
   break;
  default:
   return -ENODEV;
  }
 }

 return 0;
}
