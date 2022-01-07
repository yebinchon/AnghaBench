
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct technisat_usb2_state {int* buf; } ;
struct dvb_usb_device {int i2c_mutex; int udev; struct technisat_usb2_state* priv; } ;
typedef enum technisat_usb2_led_state { ____Placeholder_technisat_usb2_led_state } technisat_usb2_led_state ;


 int EAGAIN ;
 int SET_GREEN_LED_VENDOR_REQUEST ;
 int SET_RED_LED_VENDOR_REQUEST ;



 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 scalar_t__ disable_led_control ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int technisat_usb2_set_led(struct dvb_usb_device *d, int red,
      enum technisat_usb2_led_state st)
{
 struct technisat_usb2_state *state = d->priv;
 u8 *led = state->buf;
 int ret;

 led[0] = red ? SET_RED_LED_VENDOR_REQUEST : SET_GREEN_LED_VENDOR_REQUEST;

 if (disable_led_control && st != 129)
  return 0;

 switch (st) {
 case 128:
  led[1] = 0x82;
  break;
 case 130:
  led[1] = 0x82;
  if (red) {
   led[2] = 0x02;
   led[3] = 10;
   led[4] = 10;
  } else {
   led[2] = 0xff;
   led[3] = 50;
   led[4] = 50;
  }
  led[5] = 1;
  break;

 default:
 case 129:
  led[1] = 0x80;
  break;
 }

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 ret = usb_control_msg(d->udev, usb_sndctrlpipe(d->udev, 0),
  red ? SET_RED_LED_VENDOR_REQUEST : SET_GREEN_LED_VENDOR_REQUEST,
  USB_TYPE_VENDOR | USB_DIR_OUT,
  0, 0,
  led, 8, 500);

 mutex_unlock(&d->i2c_mutex);
 return ret;
}
