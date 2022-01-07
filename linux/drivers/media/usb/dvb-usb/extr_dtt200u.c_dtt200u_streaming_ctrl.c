
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int data_mutex; struct dtt200u_state* priv; } ;
struct dvb_usb_adapter {struct dvb_usb_device* dev; } ;
struct dtt200u_state {int* data; } ;


 int RESET_PID_FILTER ;
 int SET_STREAMING ;
 int dvb_usb_generic_write (struct dvb_usb_device*,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dtt200u_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
{
 struct dvb_usb_device *d = adap->dev;
 struct dtt200u_state *st = d->priv;
 int ret;

 mutex_lock(&d->data_mutex);
 st->data[0] = SET_STREAMING;
 st->data[1] = onoff;

 ret = dvb_usb_generic_write(adap->dev, st->data, 2);
 if (ret < 0)
  goto ret;

 if (onoff)
  goto ret;

 st->data[0] = RESET_PID_FILTER;
 ret = dvb_usb_generic_write(adap->dev, st->data, 1);

ret:
 mutex_unlock(&d->data_mutex);

 return ret;
}
