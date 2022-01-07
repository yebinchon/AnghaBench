
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;


 int hso_free_interface (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void hso_disconnect(struct usb_interface *interface)
{
 hso_free_interface(interface);


 usb_set_intfdata(interface, ((void*)0));
}
