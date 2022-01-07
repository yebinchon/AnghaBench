
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_usb_device {int data_mutex; struct dtt200u_state* priv; } ;
struct dvb_usb_adapter {struct dvb_usb_device* dev; } ;
struct dtt200u_state {int* data; } ;


 int SET_PID_FILTER ;
 int dvb_usb_generic_write (struct dvb_usb_device*,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dtt200u_pid_filter(struct dvb_usb_adapter *adap, int index, u16 pid, int onoff)
{
 struct dvb_usb_device *d = adap->dev;
 struct dtt200u_state *st = d->priv;
 int ret;

 pid = onoff ? pid : 0;

 mutex_lock(&d->data_mutex);
 st->data[0] = SET_PID_FILTER;
 st->data[1] = index;
 st->data[2] = pid & 0xff;
 st->data[3] = (pid >> 8) & 0x1f;

 ret = dvb_usb_generic_write(adap->dev, st->data, 4);
 mutex_unlock(&d->data_mutex);

 return ret;
}
