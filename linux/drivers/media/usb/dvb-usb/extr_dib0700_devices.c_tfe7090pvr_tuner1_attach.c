
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
struct TYPE_10__ {int (* set_gpio ) (TYPE_6__*,int,int ,int) ;int get_adc_power; int tuner_sleep; struct i2c_adapter* (* get_i2c_tuner ) (TYPE_6__*) ;} ;
struct dib0700_adapter_state {int set_param_save; TYPE_1__ dib7000p_ops; } ;
struct TYPE_11__ {int set_params; } ;
struct TYPE_12__ {TYPE_2__ tuner_ops; } ;
struct TYPE_15__ {TYPE_3__ ops; } ;
struct TYPE_14__ {int get_adc_power; int sleep; int reset; } ;
struct TYPE_13__ {TYPE_6__* fe; } ;


 int ENODEV ;
 int dib0090_register ;
 int dib7090_agc_startup ;
 int * dvb_attach (int ,TYPE_6__*,struct i2c_adapter*,TYPE_5__*) ;
 struct i2c_adapter* stub1 (TYPE_6__*) ;
 int stub2 (TYPE_6__*,int,int ,int) ;
 TYPE_5__* tfe7090pvr_dib0090_config ;

__attribute__((used)) static int tfe7090pvr_tuner1_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_adapter_state *st = adap->priv;
 struct i2c_adapter *tun_i2c = st->dib7000p_ops.get_i2c_tuner(adap->fe_adap[0].fe);

 tfe7090pvr_dib0090_config[1].reset = st->dib7000p_ops.tuner_sleep;
 tfe7090pvr_dib0090_config[1].sleep = st->dib7000p_ops.tuner_sleep;
 tfe7090pvr_dib0090_config[1].get_adc_power = st->dib7000p_ops.get_adc_power;

 if (dvb_attach(dib0090_register, adap->fe_adap[0].fe, tun_i2c, &tfe7090pvr_dib0090_config[1]) == ((void*)0))
  return -ENODEV;

 st->dib7000p_ops.set_gpio(adap->fe_adap[0].fe, 8, 0, 1);

 st->set_param_save = adap->fe_adap[0].fe->ops.tuner_ops.set_params;
 adap->fe_adap[0].fe->ops.tuner_ops.set_params = dib7090_agc_startup;
 return 0;
}
