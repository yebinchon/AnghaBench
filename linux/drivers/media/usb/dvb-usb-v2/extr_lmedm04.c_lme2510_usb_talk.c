
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lme2510_state {int * usb_buffer; } ;
struct dvb_usb_device {int usb_mutex; struct lme2510_state* priv; } ;


 int EAGAIN ;
 int EINVAL ;
 int dvb_usbv2_generic_rw_locked (struct dvb_usb_device*,int *,int,int *,int) ;
 int max (int,int) ;
 int memcpy (int *,int *,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lme2510_usb_talk(struct dvb_usb_device *d,
       u8 *wbuf, int wlen, u8 *rbuf, int rlen)
{
 struct lme2510_state *st = d->priv;
 int ret = 0;

 if (max(wlen, rlen) > sizeof(st->usb_buffer))
  return -EINVAL;

 ret = mutex_lock_interruptible(&d->usb_mutex);
 if (ret < 0)
  return -EAGAIN;

 memcpy(st->usb_buffer, wbuf, wlen);

 ret = dvb_usbv2_generic_rw_locked(d, st->usb_buffer, wlen,
       st->usb_buffer, rlen);

 if (rlen)
  memcpy(rbuf, st->usb_buffer, rlen);

 mutex_unlock(&d->usb_mutex);

 return ret;
}
