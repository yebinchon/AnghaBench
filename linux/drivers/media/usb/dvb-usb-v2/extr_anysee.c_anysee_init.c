
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int udev; } ;
struct anysee_state {scalar_t__ has_ci; } ;


 int anysee_ci_init (struct dvb_usb_device*) ;
 int anysee_ir_ctrl (struct dvb_usb_device*,int) ;
 int anysee_led_ctrl (struct dvb_usb_device*,int,int) ;
 struct anysee_state* d_to_priv (struct dvb_usb_device*) ;
 int usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int anysee_init(struct dvb_usb_device *d)
{
 struct anysee_state *state = d_to_priv(d);
 int ret;





 ret = usb_set_interface(d->udev, 0, 0);
 if (ret)
  return ret;


 ret = anysee_led_ctrl(d, 0x01, 0x03);
 if (ret)
  return ret;


 ret = anysee_ir_ctrl(d, 1);
 if (ret)
  return ret;


 if (state->has_ci) {
  ret = anysee_ci_init(d);
  if (ret)
   return ret;
 }

 return 0;
}
