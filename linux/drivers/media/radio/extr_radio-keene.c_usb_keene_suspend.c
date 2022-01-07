
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct keene_device {int dummy; } ;
typedef int pm_message_t ;


 int keene_cmd_main (struct keene_device*,int ,int) ;
 struct keene_device* to_keene_dev (int ) ;
 int usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int usb_keene_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct keene_device *radio = to_keene_dev(usb_get_intfdata(intf));

 return keene_cmd_main(radio, 0, 0);
}
