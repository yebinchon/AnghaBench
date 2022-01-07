
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct dvb_usb_adapter {TYPE_4__* fe_adap; struct dib0700_adapter_state* priv; } ;
struct TYPE_10__ {int (* set_gpio ) (TYPE_6__*,int,int ,int) ;int tuner_sleep; struct i2c_adapter* (* get_i2c_tuner ) (TYPE_6__*) ;} ;
struct dib0700_adapter_state {int set_param_save; TYPE_1__ dib8000_ops; } ;
struct TYPE_11__ {int set_params; } ;
struct TYPE_12__ {TYPE_2__ tuner_ops; } ;
struct TYPE_15__ {TYPE_3__ ops; } ;
struct TYPE_14__ {int wbd; int sleep; int reset; } ;
struct TYPE_13__ {TYPE_6__* fe; } ;


 int ENODEV ;
 int dib0090_register ;
 int dib8096p_agc_startup ;
 int dib8096p_wbd_table ;
 int * dvb_attach (int ,TYPE_6__*,struct i2c_adapter*,TYPE_5__*) ;
 struct i2c_adapter* stub1 (TYPE_6__*) ;
 int stub2 (TYPE_6__*,int,int ,int) ;
 TYPE_5__ tfe8096p_dib0090_config ;

__attribute__((used)) static int tfe8096p_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_adapter_state *st = adap->priv;
 struct i2c_adapter *tun_i2c = st->dib8000_ops.get_i2c_tuner(adap->fe_adap[0].fe);

 tfe8096p_dib0090_config.reset = st->dib8000_ops.tuner_sleep;
 tfe8096p_dib0090_config.sleep = st->dib8000_ops.tuner_sleep;
 tfe8096p_dib0090_config.wbd = dib8096p_wbd_table;

 if (dvb_attach(dib0090_register, adap->fe_adap[0].fe, tun_i2c,
    &tfe8096p_dib0090_config) == ((void*)0))
  return -ENODEV;

 st->dib8000_ops.set_gpio(adap->fe_adap[0].fe, 8, 0, 1);

 st->set_param_save = adap->fe_adap[0].fe->ops.tuner_ops.set_params;
 adap->fe_adap[0].fe->ops.tuner_ops.set_params = dib8096p_agc_startup;
 return 0;
}
