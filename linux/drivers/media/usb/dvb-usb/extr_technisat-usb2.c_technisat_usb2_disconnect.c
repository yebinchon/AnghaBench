
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct technisat_usb2_state {int green_led_work; } ;
struct dvb_usb_device {struct technisat_usb2_state* priv; } ;


 int cancel_delayed_work_sync (int *) ;
 int dvb_usb_device_exit (struct usb_interface*) ;
 struct dvb_usb_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void technisat_usb2_disconnect(struct usb_interface *intf)
{
 struct dvb_usb_device *dev = usb_get_intfdata(intf);


 if (dev != ((void*)0)) {
  struct technisat_usb2_state *state = dev->priv;
  if (state != ((void*)0))
   cancel_delayed_work_sync(&state->green_led_work);
 }

 dvb_usb_device_exit(intf);
}
