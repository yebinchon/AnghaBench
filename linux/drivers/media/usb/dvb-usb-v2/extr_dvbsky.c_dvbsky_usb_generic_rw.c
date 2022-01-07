
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct dvbsky_state {int * ibuf; int * obuf; } ;
struct dvb_usb_device {int usb_mutex; } ;


 struct dvbsky_state* d_to_priv (struct dvb_usb_device*) ;
 int dvb_usbv2_generic_rw_locked (struct dvb_usb_device*,int *,scalar_t__,int *,scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dvbsky_usb_generic_rw(struct dvb_usb_device *d,
  u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
 int ret;
 struct dvbsky_state *state = d_to_priv(d);

 mutex_lock(&d->usb_mutex);
 if (wlen != 0)
  memcpy(state->obuf, wbuf, wlen);

 ret = dvb_usbv2_generic_rw_locked(d, state->obuf, wlen,
   state->ibuf, rlen);

 if (!ret && (rlen != 0))
  memcpy(rbuf, state->ibuf, rlen);

 mutex_unlock(&d->usb_mutex);
 return ret;
}
