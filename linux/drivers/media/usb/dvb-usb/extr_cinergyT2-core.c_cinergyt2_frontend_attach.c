
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_device {int data_mutex; struct cinergyt2_state* priv; } ;
struct dvb_usb_adapter {struct dvb_usb_device* dev; TYPE_1__* fe_adap; } ;
struct cinergyt2_state {int * data; } ;
struct TYPE_2__ {int fe; } ;


 int CINERGYT2_EP1_GET_FIRMWARE_VERSION ;
 int cinergyt2_fe_attach (struct dvb_usb_device*) ;
 struct dvb_usb_device* cinergyt2_usb_device ;
 int deb_rc (char*) ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,int *,int,int *,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cinergyt2_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap->dev;
 struct cinergyt2_state *st = d->priv;
 int ret;

 adap->fe_adap[0].fe = cinergyt2_fe_attach(adap->dev);

 mutex_lock(&d->data_mutex);
 st->data[0] = CINERGYT2_EP1_GET_FIRMWARE_VERSION;

 ret = dvb_usb_generic_rw(d, st->data, 1, st->data, 3, 0);
 if (ret < 0) {
  deb_rc("cinergyt2_power_ctrl() Failed to retrieve sleep state info\n");
 }
 mutex_unlock(&d->data_mutex);


 cinergyt2_usb_device = adap->dev;

 return ret;
}
