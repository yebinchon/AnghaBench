
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ts2020_config {int clk; int i2c_wr_max; int ts_clk; int agc; int lnb_hv_pol; TYPE_6__* fe; struct i2c_adapter* (* get_i2c_adapter ) (struct i2c_client*) ;TYPE_6__* (* get_dvb_frontend ) (struct i2c_client*) ;scalar_t__ lnb_en_pol; scalar_t__ envelope_mode; int clk_out; scalar_t__ agc_inv; scalar_t__ spec_inv; scalar_t__ ts_clk_pol; int ts_mode; } ;
struct m88ds3103_platform_data {int clk; int i2c_wr_max; int ts_clk; int agc; int lnb_hv_pol; TYPE_6__* fe; struct i2c_adapter* (* get_i2c_adapter ) (struct i2c_client*) ;TYPE_6__* (* get_dvb_frontend ) (struct i2c_client*) ;scalar_t__ lnb_en_pol; scalar_t__ envelope_mode; int clk_out; scalar_t__ agc_inv; scalar_t__ spec_inv; scalar_t__ ts_clk_pol; int ts_mode; } ;
struct TYPE_11__ {TYPE_3__* driver; } ;
struct i2c_client {TYPE_4__ dev; } ;
struct i2c_board_info {int addr; struct ts2020_config* platform_data; int type; } ;
struct i2c_adapter {int dummy; } ;
struct dw2102_state {int* data; scalar_t__ last_lock; int fe_read_status; struct i2c_client* i2c_client_tuner; struct i2c_client* i2c_client_demod; } ;
struct dvb_usb_device {struct i2c_adapter i2c_adap; int data_mutex; struct dw2102_state* priv; } ;
struct dvb_usb_adapter {TYPE_5__* fe_adap; struct dvb_usb_device* dev; } ;
typedef int board_info ;
struct TYPE_8__ {int get_rf_strength; } ;
struct TYPE_9__ {int read_status; TYPE_1__ tuner_ops; int read_signal_strength; } ;
struct TYPE_13__ {TYPE_2__ ops; } ;
struct TYPE_12__ {TYPE_6__* fe; } ;
struct TYPE_10__ {int owner; } ;


 int ENODEV ;
 int I2C_NAME_SIZE ;
 int M88DS3103_CLOCK_OUT_ENABLED ;
 int M88DS3103_TS_CI ;
 int dvb_frontend_detach (TYPE_6__*) ;
 scalar_t__ dvb_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int,int ) ;
 int err (char*) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_module (char*) ;
 int strscpy (int ,char*,int ) ;
 TYPE_6__* stub1 (struct i2c_client*) ;
 struct i2c_adapter* stub2 (struct i2c_client*) ;
 int try_module_get (int ) ;
 int tt_s2_4600_read_status ;

__attribute__((used)) static int tt_s2_4600_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap->dev;
 struct dw2102_state *state = d->priv;
 struct i2c_adapter *i2c_adapter;
 struct i2c_client *client;
 struct i2c_board_info board_info;
 struct m88ds3103_platform_data m88ds3103_pdata = {};
 struct ts2020_config ts2020_config = {};

 mutex_lock(&d->data_mutex);

 state->data[0] = 0xe;
 state->data[1] = 0x80;
 state->data[2] = 0x0;

 if (dvb_usb_generic_rw(d, state->data, 3, state->data, 1, 0) < 0)
  err("command 0x0e transfer failed.");

 state->data[0] = 0xe;
 state->data[1] = 0x02;
 state->data[2] = 1;

 if (dvb_usb_generic_rw(d, state->data, 3, state->data, 1, 0) < 0)
  err("command 0x0e transfer failed.");
 msleep(300);

 state->data[0] = 0xe;
 state->data[1] = 0x83;
 state->data[2] = 0;

 if (dvb_usb_generic_rw(d, state->data, 3, state->data, 1, 0) < 0)
  err("command 0x0e transfer failed.");

 state->data[0] = 0xe;
 state->data[1] = 0x83;
 state->data[2] = 1;

 if (dvb_usb_generic_rw(d, state->data, 3, state->data, 1, 0) < 0)
  err("command 0x0e transfer failed.");

 state->data[0] = 0x51;

 if (dvb_usb_generic_rw(d, state->data, 1, state->data, 1, 0) < 0)
  err("command 0x51 transfer failed.");

 mutex_unlock(&d->data_mutex);


 m88ds3103_pdata.clk = 27000000;
 m88ds3103_pdata.i2c_wr_max = 33;
 m88ds3103_pdata.ts_mode = M88DS3103_TS_CI;
 m88ds3103_pdata.ts_clk = 16000;
 m88ds3103_pdata.ts_clk_pol = 0;
 m88ds3103_pdata.spec_inv = 0;
 m88ds3103_pdata.agc = 0x99;
 m88ds3103_pdata.agc_inv = 0;
 m88ds3103_pdata.clk_out = M88DS3103_CLOCK_OUT_ENABLED;
 m88ds3103_pdata.envelope_mode = 0;
 m88ds3103_pdata.lnb_hv_pol = 1;
 m88ds3103_pdata.lnb_en_pol = 0;
 memset(&board_info, 0, sizeof(board_info));
 strscpy(board_info.type, "m88ds3103", I2C_NAME_SIZE);
 board_info.addr = 0x68;
 board_info.platform_data = &m88ds3103_pdata;
 request_module("m88ds3103");
 client = i2c_new_device(&d->i2c_adap, &board_info);
 if (client == ((void*)0) || client->dev.driver == ((void*)0))
  return -ENODEV;
 if (!try_module_get(client->dev.driver->owner)) {
  i2c_unregister_device(client);
  return -ENODEV;
 }
 adap->fe_adap[0].fe = m88ds3103_pdata.get_dvb_frontend(client);
 i2c_adapter = m88ds3103_pdata.get_i2c_adapter(client);

 state->i2c_client_demod = client;


 ts2020_config.fe = adap->fe_adap[0].fe;
 memset(&board_info, 0, sizeof(board_info));
 strscpy(board_info.type, "ts2022", I2C_NAME_SIZE);
 board_info.addr = 0x60;
 board_info.platform_data = &ts2020_config;
 request_module("ts2020");
 client = i2c_new_device(i2c_adapter, &board_info);

 if (client == ((void*)0) || client->dev.driver == ((void*)0)) {
  dvb_frontend_detach(adap->fe_adap[0].fe);
  return -ENODEV;
 }

 if (!try_module_get(client->dev.driver->owner)) {
  i2c_unregister_device(client);
  dvb_frontend_detach(adap->fe_adap[0].fe);
  return -ENODEV;
 }


 adap->fe_adap[0].fe->ops.read_signal_strength =
   adap->fe_adap[0].fe->ops.tuner_ops.get_rf_strength;

 state->i2c_client_tuner = client;


 state->fe_read_status = adap->fe_adap[0].fe->ops.read_status;
 adap->fe_adap[0].fe->ops.read_status = tt_s2_4600_read_status;

 state->last_lock = 0;

 return 0;
}
