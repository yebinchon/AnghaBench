
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uvc_device {int quirks; struct usb_host_endpoint* int_ep; TYPE_1__* intf; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {unsigned char* extra; int extralen; struct usb_host_endpoint* endpoint; TYPE_2__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bInterval; int bEndpointAddress; int wMaxPacketSize; } ;
struct usb_host_endpoint {struct usb_endpoint_descriptor desc; } ;
struct TYPE_3__ {struct usb_host_interface* cur_altsetting; } ;


 unsigned char USB_DT_CS_INTERFACE ;
 int UVC_QUIRK_BUILTIN_ISIGHT ;
 int UVC_TRACE_DESCR ;
 int le16_to_cpu (int ) ;
 scalar_t__ usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 int uvc_parse_standard_control (struct uvc_device*,unsigned char*,int) ;
 scalar_t__ uvc_parse_vendor_control (struct uvc_device*,unsigned char*,int) ;
 int uvc_trace (int ,char*,int ) ;

__attribute__((used)) static int uvc_parse_control(struct uvc_device *dev)
{
 struct usb_host_interface *alts = dev->intf->cur_altsetting;
 unsigned char *buffer = alts->extra;
 int buflen = alts->extralen;
 int ret;






 while (buflen > 2) {
  if (uvc_parse_vendor_control(dev, buffer, buflen) ||
      buffer[1] != USB_DT_CS_INTERFACE)
   goto next_descriptor;

  if ((ret = uvc_parse_standard_control(dev, buffer, buflen)) < 0)
   return ret;

next_descriptor:
  buflen -= buffer[0];
  buffer += buffer[0];
 }






 if (alts->desc.bNumEndpoints == 1 &&
     !(dev->quirks & UVC_QUIRK_BUILTIN_ISIGHT)) {
  struct usb_host_endpoint *ep = &alts->endpoint[0];
  struct usb_endpoint_descriptor *desc = &ep->desc;

  if (usb_endpoint_is_int_in(desc) &&
      le16_to_cpu(desc->wMaxPacketSize) >= 8 &&
      desc->bInterval != 0) {
   uvc_trace(UVC_TRACE_DESCR, "Found a Status endpoint "
    "(addr %02x).\n", desc->bEndpointAddress);
   dev->int_ep = ep;
  }
 }

 return 0;
}
