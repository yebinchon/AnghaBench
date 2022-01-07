
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct technisat_usb2_state {int* buf; } ;
struct ir_raw_event {int pulse; int duration; } ;
struct dvb_usb_device {int rc_dev; int i2c_mutex; int udev; struct technisat_usb2_state* priv; } ;


 int ARRAY_SIZE (int*) ;
 int EAGAIN ;
 int FIRMWARE_CLOCK_DIVISOR ;
 int FIRMWARE_CLOCK_TICK ;
 int GET_IR_DATA_VENDOR_REQUEST ;
 int MAXIMUM_IR_BIT_TIME_TICK_COUNT ;
 int MINIMUM_IR_BIT_TRANSITION_TICK_COUNT ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int deb_rc (char*,int) ;
 int debug_dump (int*,int,int (*) (char*,int)) ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_store (int ,struct ir_raw_event*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int,int,int,int ,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int technisat_usb2_get_ir(struct dvb_usb_device *d)
{
 struct technisat_usb2_state *state = d->priv;
 struct ir_raw_event ev;
 u8 *buf = state->buf;
 int i, ret;

 buf[0] = GET_IR_DATA_VENDOR_REQUEST;
 buf[1] = 0x08;
 buf[2] = 0x8f;
 buf[3] = MINIMUM_IR_BIT_TRANSITION_TICK_COUNT;
 buf[4] = MAXIMUM_IR_BIT_TIME_TICK_COUNT;

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;
 ret = usb_control_msg(d->udev, usb_sndctrlpipe(d->udev, 0),
   GET_IR_DATA_VENDOR_REQUEST,
   USB_TYPE_VENDOR | USB_DIR_OUT,
   0, 0,
   buf, 5, 500);
 if (ret < 0)
  goto unlock;

 buf[1] = 0;
 buf[2] = 0;
 ret = usb_control_msg(d->udev, usb_rcvctrlpipe(d->udev, 0),
   GET_IR_DATA_VENDOR_REQUEST,
   USB_TYPE_VENDOR | USB_DIR_IN,
   0x8080, 0,
   buf, 62, 500);

unlock:
 mutex_unlock(&d->i2c_mutex);

 if (ret < 0)
  return ret;

 if (ret == 1)
  return 0;
 ev.pulse = 0;
 for (i = 1; i < ARRAY_SIZE(state->buf); i++) {
  if (buf[i] == 0xff) {
   ev.pulse = 0;
   ev.duration = 888888*2;
   ir_raw_event_store(d->rc_dev, &ev);
   break;
  }

  ev.pulse = !ev.pulse;
  ev.duration = (buf[i] * FIRMWARE_CLOCK_DIVISOR *
          FIRMWARE_CLOCK_TICK) / 1000;
  ir_raw_event_store(d->rc_dev, &ev);
 }

 ir_raw_event_handle(d->rc_dev);

 return 1;
}
