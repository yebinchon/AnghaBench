
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct TYPE_3__ {unsigned int bNumEndpoints; } ;
struct usb_host_interface {struct usb_host_endpoint* endpoint; TYPE_1__ desc; } ;
struct TYPE_4__ {int bmAttributes; int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_2__ desc; } ;
struct lan78xx_net {struct usb_host_endpoint* ep_intr; int udev; int pipe_out; int pipe_in; } ;


 int EINVAL ;
 int USB_ENDPOINT_NUMBER_MASK ;


 scalar_t__ usb_endpoint_dir_in (TYPE_2__*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int
lan78xx_get_endpoints(struct lan78xx_net *dev, struct usb_interface *intf)
{
 int tmp;
 struct usb_host_interface *alt = ((void*)0);
 struct usb_host_endpoint *in = ((void*)0), *out = ((void*)0);
 struct usb_host_endpoint *status = ((void*)0);

 for (tmp = 0; tmp < intf->num_altsetting; tmp++) {
  unsigned ep;

  in = ((void*)0);
  out = ((void*)0);
  status = ((void*)0);
  alt = intf->altsetting + tmp;

  for (ep = 0; ep < alt->desc.bNumEndpoints; ep++) {
   struct usb_host_endpoint *e;
   int intr = 0;

   e = alt->endpoint + ep;
   switch (e->desc.bmAttributes) {
   case 128:
    if (!usb_endpoint_dir_in(&e->desc))
     continue;
    intr = 1;

   case 129:
    break;
   default:
    continue;
   }
   if (usb_endpoint_dir_in(&e->desc)) {
    if (!intr && !in)
     in = e;
    else if (intr && !status)
     status = e;
   } else {
    if (!out)
     out = e;
   }
  }
  if (in && out)
   break;
 }
 if (!alt || !in || !out)
  return -EINVAL;

 dev->pipe_in = usb_rcvbulkpipe(dev->udev,
           in->desc.bEndpointAddress &
           USB_ENDPOINT_NUMBER_MASK);
 dev->pipe_out = usb_sndbulkpipe(dev->udev,
     out->desc.bEndpointAddress &
     USB_ENDPOINT_NUMBER_MASK);
 dev->ep_intr = status;

 return 0;
}
