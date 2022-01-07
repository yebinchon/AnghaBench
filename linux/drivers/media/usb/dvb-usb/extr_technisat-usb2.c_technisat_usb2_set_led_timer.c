
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct technisat_usb2_state {int* buf; } ;
struct dvb_usb_device {int i2c_mutex; int udev; struct technisat_usb2_state* priv; } ;


 int EAGAIN ;
 int SET_LED_TIMER_DIVIDER_VENDOR_REQUEST ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,int*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int technisat_usb2_set_led_timer(struct dvb_usb_device *d, u8 red, u8 green)
{
 struct technisat_usb2_state *state = d->priv;
 u8 *b = state->buf;
 int ret;

 b[0] = 0;

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 ret = usb_control_msg(d->udev, usb_sndctrlpipe(d->udev, 0),
  SET_LED_TIMER_DIVIDER_VENDOR_REQUEST,
  USB_TYPE_VENDOR | USB_DIR_OUT,
  (red << 8) | green, 0,
  b, 1, 500);

 mutex_unlock(&d->i2c_mutex);

 return ret;
}
