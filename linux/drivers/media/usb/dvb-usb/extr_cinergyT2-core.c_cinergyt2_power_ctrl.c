
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int data_mutex; struct cinergyt2_state* priv; } ;
struct cinergyt2_state {int* data; } ;


 int CINERGYT2_EP1_SLEEP_MODE ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cinergyt2_power_ctrl(struct dvb_usb_device *d, int enable)
{
 struct cinergyt2_state *st = d->priv;
 int ret;

 mutex_lock(&d->data_mutex);
 st->data[0] = CINERGYT2_EP1_SLEEP_MODE;
 st->data[1] = enable ? 0 : 1;

 ret = dvb_usb_generic_rw(d, st->data, 2, st->data, 3, 0);
 mutex_unlock(&d->data_mutex);

 return ret;
}
