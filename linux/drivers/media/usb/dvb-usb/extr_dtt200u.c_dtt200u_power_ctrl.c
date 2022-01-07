
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int data_mutex; struct dtt200u_state* priv; } ;
struct dtt200u_state {int * data; } ;


 int SET_INIT ;
 int dvb_usb_generic_write (struct dvb_usb_device*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dtt200u_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 struct dtt200u_state *st = d->priv;
 int ret = 0;

 mutex_lock(&d->data_mutex);

 st->data[0] = SET_INIT;

 if (onoff)
  ret = dvb_usb_generic_write(d, st->data, 2);

 mutex_unlock(&d->data_mutex);
 return ret;
}
