
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int* buf; int len; int addr; int flags; } ;
struct dvb_usb_adapter {TYPE_3__* fe_adap; TYPE_1__* dev; struct dibusb_state* priv; } ;
struct dibusb_state {int tuner_addr; } ;
struct TYPE_7__ {int (* i2c_gate_ctrl ) (TYPE_4__*,int) ;} ;
struct TYPE_9__ {TYPE_2__ ops; } ;
struct TYPE_8__ {TYPE_4__* fe; } ;
struct TYPE_6__ {int i2c_adap; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int dibusb_panasonic_tuner_attach (struct dvb_usb_adapter*) ;
 int dibusb_thomson_tuner_attach (struct dvb_usb_adapter*) ;
 int err (char*) ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int info (char*) ;
 int stub1 (TYPE_4__*,int) ;
 int stub2 (TYPE_4__*,int) ;

__attribute__((used)) static int dibusb_tuner_probe_and_attach(struct dvb_usb_adapter *adap)
{
 u8 b[2] = { 0,0 }, b2[1];
 int ret = 0;
 struct i2c_msg msg[2] = {
  { .flags = 0, .buf = b, .len = 2 },
  { .flags = I2C_M_RD, .buf = b2, .len = 1 },
 };
 struct dibusb_state *st = adap->priv;


 msg[0].addr = msg[1].addr = st->tuner_addr = 0x60;

 if (adap->fe_adap[0].fe->ops.i2c_gate_ctrl)
  adap->fe_adap[0].fe->ops.i2c_gate_ctrl(adap->fe_adap[0].fe, 1);

 if (i2c_transfer(&adap->dev->i2c_adap, msg, 2) != 2) {
  err("tuner i2c write failed.");
  ret = -EREMOTEIO;
 }

 if (adap->fe_adap[0].fe->ops.i2c_gate_ctrl)
  adap->fe_adap[0].fe->ops.i2c_gate_ctrl(adap->fe_adap[0].fe, 0);

 if (b2[0] == 0xfe) {
  info("This device has the Thomson Cable onboard. Which is default.");
  ret = dibusb_thomson_tuner_attach(adap);
 } else {
  info("This device has the Panasonic ENV77H11D5 onboard.");
  ret = dibusb_panasonic_tuner_attach(adap);
 }

 return ret;
}
