
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct i2c_client {int dummy; } ;
struct dvb_usb_device {int i2c_adap; struct usb_interface* intf; } ;
struct dvb_usb_adapter {int id; TYPE_2__** fe; } ;
struct af9015_state {int * sleep; int * init; int * read_status; int * set_frontend; struct i2c_client** demod_i2c_client; TYPE_3__* af9013_pdata; int * af9013_i2c_addr; scalar_t__ dual_mode; } ;
struct TYPE_6__ {int ts_output_pin; TYPE_2__* (* get_dvb_frontend ) (struct i2c_client*) ;void** gpio; int api_version; int ts_mode; } ;
struct TYPE_4__ {int sleep; int init; int read_status; int set_frontend; } ;
struct TYPE_5__ {TYPE_1__ ops; } ;


 void* AF9013_GPIO_HI ;
 void* AF9013_GPIO_LO ;
 void* AF9013_GPIO_TUNER_ON ;
 int AF9013_TS_MODE_SERIAL ;
 int AF9013_TS_MODE_USB ;
 int ENODEV ;
 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct af9015_state* adap_to_priv (struct dvb_usb_adapter*) ;
 int af9015_af9013_init ;
 int af9015_af9013_read_status ;
 int af9015_af9013_set_frontend ;
 int af9015_af9013_sleep ;
 int af9015_copy_firmware (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 struct i2c_client* dvb_module_probe (char*,int *,int *,int ,TYPE_3__*) ;
 int memcpy (int ,char*,int) ;
 int msleep (int) ;
 TYPE_2__* stub1 (struct i2c_client*) ;

__attribute__((used)) static int af9015_af9013_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct af9015_state *state = adap_to_priv(adap);
 struct dvb_usb_device *d = adap_to_d(adap);
 struct usb_interface *intf = d->intf;
 struct i2c_client *client;
 int ret;

 dev_dbg(&intf->dev, "adap id %u\n", adap->id);

 if (adap->id == 0) {
  state->af9013_pdata[0].ts_mode = AF9013_TS_MODE_USB;
  memcpy(state->af9013_pdata[0].api_version, "\x0\x1\x9\x0", 4);
  state->af9013_pdata[0].gpio[0] = AF9013_GPIO_HI;
  state->af9013_pdata[0].gpio[3] = AF9013_GPIO_TUNER_ON;
 } else if (adap->id == 1) {
  state->af9013_pdata[1].ts_mode = AF9013_TS_MODE_SERIAL;
  state->af9013_pdata[1].ts_output_pin = 7;
  memcpy(state->af9013_pdata[1].api_version, "\x0\x1\x9\x0", 4);
  state->af9013_pdata[1].gpio[0] = AF9013_GPIO_TUNER_ON;
  state->af9013_pdata[1].gpio[1] = AF9013_GPIO_LO;


  if (state->dual_mode) {

   msleep(100);

   ret = af9015_copy_firmware(adap_to_d(adap));
   if (ret) {
    dev_err(&intf->dev,
     "firmware copy to 2nd frontend failed, will disable it\n");
    state->dual_mode = 0;
    goto err;
   }
  } else {
   ret = -ENODEV;
   goto err;
  }
 }


 client = dvb_module_probe("af9013", ((void*)0), &d->i2c_adap,
      state->af9013_i2c_addr[adap->id],
      &state->af9013_pdata[adap->id]);
 if (!client) {
  ret = -ENODEV;
  goto err;
 }
 adap->fe[0] = state->af9013_pdata[adap->id].get_dvb_frontend(client);
 state->demod_i2c_client[adap->id] = client;
 if (adap->fe[0]) {
  state->set_frontend[adap->id] = adap->fe[0]->ops.set_frontend;
  adap->fe[0]->ops.set_frontend = af9015_af9013_set_frontend;
  state->read_status[adap->id] = adap->fe[0]->ops.read_status;
  adap->fe[0]->ops.read_status = af9015_af9013_read_status;
  state->init[adap->id] = adap->fe[0]->ops.init;
  adap->fe[0]->ops.init = af9015_af9013_init;
  state->sleep[adap->id] = adap->fe[0]->ops.sleep;
  adap->fe[0]->ops.sleep = af9015_af9013_sleep;
 }

 return 0;
err:
 dev_dbg(&intf->dev, "failed %d\n", ret);
 return ret;
}
