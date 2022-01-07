
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__ partial_data; } ;
struct usb_interface {int dummy; } ;


 int kfree (void*) ;

__attribute__((used)) static void cx82310_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 kfree((void *)dev->partial_data);
}
