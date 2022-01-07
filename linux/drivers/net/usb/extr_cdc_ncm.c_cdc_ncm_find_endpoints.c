
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct usbnet {int udev; int out; int in; struct usb_host_endpoint* status; } ;
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct TYPE_7__ {int bmAttributes; int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct TYPE_5__ {scalar_t__ bNumEndpoints; } ;
struct TYPE_6__ {struct usb_host_endpoint* endpoint; TYPE_1__ desc; } ;


 int USB_ENDPOINT_NUMBER_MASK ;
 int USB_ENDPOINT_XFERTYPE_MASK ;


 int usb_endpoint_dir_in (TYPE_3__*) ;
 int usb_endpoint_maxp (TYPE_3__*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static void
cdc_ncm_find_endpoints(struct usbnet *dev, struct usb_interface *intf)
{
 struct usb_host_endpoint *e, *in = ((void*)0), *out = ((void*)0);
 u8 ep;

 for (ep = 0; ep < intf->cur_altsetting->desc.bNumEndpoints; ep++) {
  e = intf->cur_altsetting->endpoint + ep;


  if (!usb_endpoint_maxp(&e->desc))
   continue;

  switch (e->desc.bmAttributes & USB_ENDPOINT_XFERTYPE_MASK) {
  case 128:
   if (usb_endpoint_dir_in(&e->desc)) {
    if (!dev->status)
     dev->status = e;
   }
   break;

  case 129:
   if (usb_endpoint_dir_in(&e->desc)) {
    if (!in)
     in = e;
   } else {
    if (!out)
     out = e;
   }
   break;

  default:
   break;
  }
 }
 if (in && !dev->in)
  dev->in = usb_rcvbulkpipe(dev->udev,
       in->desc.bEndpointAddress &
       USB_ENDPOINT_NUMBER_MASK);
 if (out && !dev->out)
  dev->out = usb_sndbulkpipe(dev->udev,
        out->desc.bEndpointAddress &
        USB_ENDPOINT_NUMBER_MASK);
}
