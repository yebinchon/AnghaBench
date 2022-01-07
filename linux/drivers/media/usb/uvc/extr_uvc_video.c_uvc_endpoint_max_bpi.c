
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct TYPE_2__ {int wBytesPerInterval; } ;
struct usb_host_endpoint {int desc; TYPE_1__ ss_ep_comp; } ;
struct usb_device {int speed; } ;






 unsigned int le16_to_cpu (int ) ;
 unsigned int usb_endpoint_maxp (int *) ;
 unsigned int usb_endpoint_maxp_mult (int *) ;

__attribute__((used)) static unsigned int uvc_endpoint_max_bpi(struct usb_device *dev,
      struct usb_host_endpoint *ep)
{
 u16 psize;
 u16 mult;

 switch (dev->speed) {
 case 130:
 case 129:
  return le16_to_cpu(ep->ss_ep_comp.wBytesPerInterval);
 case 131:
  psize = usb_endpoint_maxp(&ep->desc);
  mult = usb_endpoint_maxp_mult(&ep->desc);
  return psize * mult;
 case 128:
  psize = usb_endpoint_maxp(&ep->desc);
  return psize;
 default:
  psize = usb_endpoint_maxp(&ep->desc);
  return psize;
 }
}
