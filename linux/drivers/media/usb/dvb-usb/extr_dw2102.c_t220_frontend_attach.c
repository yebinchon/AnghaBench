
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw2102_state {int* data; } ;
struct dvb_usb_device {int i2c_adap; int data_mutex; struct dw2102_state* priv; } ;
struct dvb_usb_adapter {TYPE_1__* fe_adap; struct dvb_usb_device* dev; } ;
struct TYPE_2__ {int * fe; } ;


 int EIO ;
 int cxd2820r_attach ;
 int cxd2820r_config ;
 int * dvb_attach (int ,int *,int,int *,...) ;
 scalar_t__ dvb_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int,int ) ;
 int err (char*) ;
 int info (char*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tda18271_attach ;
 int tda18271_config ;

__attribute__((used)) static int t220_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap->dev;
 struct dw2102_state *state = d->priv;

 mutex_lock(&d->data_mutex);

 state->data[0] = 0xe;
 state->data[1] = 0x87;
 state->data[2] = 0x0;

 if (dvb_usb_generic_rw(d, state->data, 3, state->data, 1, 0) < 0)
  err("command 0x0e transfer failed.");

 state->data[0] = 0xe;
 state->data[1] = 0x86;
 state->data[2] = 1;

 if (dvb_usb_generic_rw(d, state->data, 3, state->data, 1, 0) < 0)
  err("command 0x0e transfer failed.");

 state->data[0] = 0xe;
 state->data[1] = 0x80;
 state->data[2] = 0;

 if (dvb_usb_generic_rw(d, state->data, 3, state->data, 1, 0) < 0)
  err("command 0x0e transfer failed.");

 msleep(50);

 state->data[0] = 0xe;
 state->data[1] = 0x80;
 state->data[2] = 1;

 if (dvb_usb_generic_rw(d, state->data, 3, state->data, 1, 0) < 0)
  err("command 0x0e transfer failed.");

 state->data[0] = 0x51;

 if (dvb_usb_generic_rw(d, state->data, 1, state->data, 1, 0) < 0)
  err("command 0x51 transfer failed.");

 mutex_unlock(&d->data_mutex);

 adap->fe_adap[0].fe = dvb_attach(cxd2820r_attach, &cxd2820r_config,
     &d->i2c_adap, ((void*)0));
 if (adap->fe_adap[0].fe != ((void*)0)) {
  if (dvb_attach(tda18271_attach, adap->fe_adap[0].fe, 0x60,
     &d->i2c_adap, &tda18271_config)) {
   info("Attached TDA18271HD/CXD2820R!");
   return 0;
  }
 }

 info("Failed to attach TDA18271HD/CXD2820R!");
 return -EIO;
}
