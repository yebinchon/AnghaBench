
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct dvb_usb_adapter {TYPE_4__* fe_adap; struct dib0700_adapter_state* priv; } ;
struct TYPE_7__ {struct i2c_adapter* (* get_i2c_master ) (TYPE_5__*,int ,int) ;} ;
struct dib0700_adapter_state {int set_param_save; TYPE_1__ dib7000p_ops; } ;
struct TYPE_8__ {int set_params; } ;
struct TYPE_9__ {TYPE_2__ tuner_ops; } ;
struct TYPE_11__ {TYPE_3__ ops; } ;
struct TYPE_10__ {TYPE_5__* fe; } ;


 int DIBX000_I2C_INTERFACE_TUNER ;
 int ENODEV ;
 int dib0070_attach ;
 int dib7770_set_param_override ;
 int dib7770p_dib0070_config ;
 int * dvb_attach (int ,TYPE_5__*,struct i2c_adapter*,int *) ;
 struct i2c_adapter* stub1 (TYPE_5__*,int ,int) ;

__attribute__((used)) static int dib7770p_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_adapter_state *st = adap->priv;
 struct i2c_adapter *tun_i2c = st->dib7000p_ops.get_i2c_master(adap->fe_adap[0].fe,
    DIBX000_I2C_INTERFACE_TUNER, 1);

 if (dvb_attach(dib0070_attach, adap->fe_adap[0].fe, tun_i2c,
         &dib7770p_dib0070_config) == ((void*)0))
  return -ENODEV;

 st->set_param_save = adap->fe_adap[0].fe->ops.tuner_ops.set_params;
 adap->fe_adap[0].fe->ops.tuner_ops.set_params = dib7770_set_param_override;
 return 0;
}
