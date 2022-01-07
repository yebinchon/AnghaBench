
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int usb_mutex; struct dib0700_state* priv; } ;
struct dib0700_state {int* buf; } ;
typedef enum dib07x0_gpios { ____Placeholder_dib07x0_gpios } dib07x0_gpios ;


 int EINTR ;
 int REQUEST_SET_GPIO ;
 int dib0700_ctrl_wr (struct dvb_usb_device*,int*,int) ;
 int err (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int dib0700_set_gpio(struct dvb_usb_device *d, enum dib07x0_gpios gpio, u8 gpio_dir, u8 gpio_val)
{
 struct dib0700_state *st = d->priv;
 int ret;

 if (mutex_lock_interruptible(&d->usb_mutex) < 0) {
  err("could not acquire lock");
  return -EINTR;
 }

 st->buf[0] = REQUEST_SET_GPIO;
 st->buf[1] = gpio;
 st->buf[2] = ((gpio_dir & 0x01) << 7) | ((gpio_val & 0x01) << 6);

 ret = dib0700_ctrl_wr(d, st->buf, 3);

 mutex_unlock(&d->usb_mutex);
 return ret;
}
