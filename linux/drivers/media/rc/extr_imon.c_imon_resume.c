
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct imon_context {int rx_urb_intf1; TYPE_4__* rx_endpoint_intf1; int usb_rx_buf; int usbdev_intf1; int rx_urb_intf0; TYPE_3__* rx_endpoint_intf0; int usbdev_intf0; } ;
struct TYPE_8__ {int bInterval; int bEndpointAddress; } ;
struct TYPE_7__ {int bInterval; int bEndpointAddress; } ;
struct TYPE_5__ {int bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 int GFP_ATOMIC ;
 int usb_fill_int_urb (int ,int ,int ,int ,int,int ,struct imon_context*,int ) ;
 struct imon_context* usb_get_intfdata (struct usb_interface*) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_rx_callback_intf0 ;
 int usb_rx_callback_intf1 ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int imon_resume(struct usb_interface *intf)
{
 int rc = 0;
 struct imon_context *ictx = usb_get_intfdata(intf);
 int ifnum = intf->cur_altsetting->desc.bInterfaceNumber;

 if (ifnum == 0) {
  usb_fill_int_urb(ictx->rx_urb_intf0, ictx->usbdev_intf0,
   usb_rcvintpipe(ictx->usbdev_intf0,
    ictx->rx_endpoint_intf0->bEndpointAddress),
   ictx->usb_rx_buf, sizeof(ictx->usb_rx_buf),
   usb_rx_callback_intf0, ictx,
   ictx->rx_endpoint_intf0->bInterval);

  rc = usb_submit_urb(ictx->rx_urb_intf0, GFP_ATOMIC);

 } else {
  usb_fill_int_urb(ictx->rx_urb_intf1, ictx->usbdev_intf1,
   usb_rcvintpipe(ictx->usbdev_intf1,
    ictx->rx_endpoint_intf1->bEndpointAddress),
   ictx->usb_rx_buf, sizeof(ictx->usb_rx_buf),
   usb_rx_callback_intf1, ictx,
   ictx->rx_endpoint_intf1->bInterval);

  rc = usb_submit_urb(ictx->rx_urb_intf1, GFP_ATOMIC);
 }

 return rc;
}
