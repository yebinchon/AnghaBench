
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct imon_context {int rx_urb_intf1; int rx_urb_intf0; } ;
typedef int pm_message_t ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 struct imon_context* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int imon_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct imon_context *ictx = usb_get_intfdata(intf);
 int ifnum = intf->cur_altsetting->desc.bInterfaceNumber;

 if (ifnum == 0)
  usb_kill_urb(ictx->rx_urb_intf0);
 else
  usb_kill_urb(ictx->rx_urb_intf1);

 return 0;
}
