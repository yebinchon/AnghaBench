
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct keene_device {int curfreq; } ;


 int keene_cmd_main (struct keene_device*,int ,int) ;
 int keene_cmd_set (struct keene_device*) ;
 int mdelay (int) ;
 struct keene_device* to_keene_dev (int ) ;
 int usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int usb_keene_resume(struct usb_interface *intf)
{
 struct keene_device *radio = to_keene_dev(usb_get_intfdata(intf));

 mdelay(50);
 keene_cmd_set(radio);
 keene_cmd_main(radio, radio->curfreq, 1);
 return 0;
}
