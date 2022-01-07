
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si2168_config {int ts_clock_gapped; int if_port; int * fe; int ts_mode; struct i2c_adapter** i2c_adapter; } ;
struct si2157_config {int ts_clock_gapped; int if_port; int * fe; int ts_mode; struct i2c_adapter** i2c_adapter; } ;
struct i2c_adapter {int dummy; } ;
struct dvbsky_state {void* i2c_client_demod; void* i2c_client_tuner; } ;
struct dvb_usb_device {struct i2c_adapter i2c_adap; } ;
struct dvb_usb_adapter {int ** fe; } ;


 int ENODEV ;
 int SI2168_TS_PARALLEL ;
 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct dvbsky_state* adap_to_priv (struct dvb_usb_adapter*) ;
 void* dvb_module_probe (char*,int *,struct i2c_adapter*,int,struct si2168_config*) ;
 int dvb_module_release (void*) ;

__attribute__((used)) static int dvbsky_t330_attach(struct dvb_usb_adapter *adap)
{
 struct dvbsky_state *state = adap_to_priv(adap);
 struct dvb_usb_device *d = adap_to_d(adap);
 struct i2c_adapter *i2c_adapter;
 struct si2168_config si2168_config = {};
 struct si2157_config si2157_config = {};


 si2168_config.i2c_adapter = &i2c_adapter;
 si2168_config.fe = &adap->fe[0];
 si2168_config.ts_mode = SI2168_TS_PARALLEL;
 si2168_config.ts_clock_gapped = 1;

 state->i2c_client_demod = dvb_module_probe("si2168", ((void*)0),
         &d->i2c_adap,
         0x64, &si2168_config);
 if (!state->i2c_client_demod)
  return -ENODEV;


 si2157_config.fe = adap->fe[0];
 si2157_config.if_port = 1;

 state->i2c_client_tuner = dvb_module_probe("si2157", ((void*)0),
         i2c_adapter,
         0x60, &si2157_config);
 if (!state->i2c_client_tuner) {
  dvb_module_release(state->i2c_client_demod);
  return -ENODEV;
 }

 return 0;
}
