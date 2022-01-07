
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int usb_mutex; } ;


 int dvb_usb_v2_generic_io (struct dvb_usb_device*,int *,int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int dvb_usbv2_generic_rw(struct dvb_usb_device *d,
  u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
 int ret;

 mutex_lock(&d->usb_mutex);
 ret = dvb_usb_v2_generic_io(d, wbuf, wlen, rbuf, rlen);
 mutex_unlock(&d->usb_mutex);

 return ret;
}
