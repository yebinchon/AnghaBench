
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct dvb_usb_adapter {TYPE_4__* fe_adap; struct dib0700_adapter_state* priv; } ;
struct TYPE_6__ {void* set_params; } ;
struct TYPE_7__ {TYPE_2__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; int dvb; } ;
struct TYPE_5__ {struct i2c_adapter* (* get_i2c_master ) (struct dvb_frontend*,int ,int) ;struct dvb_frontend* (* get_slave_frontend ) (struct dvb_frontend*,int) ;} ;
struct dib0700_adapter_state {void* set_param_save; TYPE_1__ dib8000_ops; } ;
struct TYPE_8__ {struct dvb_frontend* fe; } ;


 int DIBX000_I2C_INTERFACE_TUNER ;
 int ENODEV ;
 int dib0090_register ;
 void* dib8096_set_param_override ;
 int dib809x_dib0090_config ;
 int * dvb_attach (int ,struct dvb_frontend*,struct i2c_adapter*,int *) ;
 struct dvb_frontend* stub1 (struct dvb_frontend*,int) ;
 struct i2c_adapter* stub2 (struct dvb_frontend*,int ,int) ;
 struct i2c_adapter* stub3 (struct dvb_frontend*,int ,int) ;

__attribute__((used)) static int nim8096md_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_adapter_state *st = adap->priv;
 struct i2c_adapter *tun_i2c;
 struct dvb_frontend *fe_slave = st->dib8000_ops.get_slave_frontend(adap->fe_adap[0].fe, 1);

 if (fe_slave) {
  tun_i2c = st->dib8000_ops.get_i2c_master(fe_slave, DIBX000_I2C_INTERFACE_TUNER, 1);
  if (dvb_attach(dib0090_register, fe_slave, tun_i2c, &dib809x_dib0090_config) == ((void*)0))
   return -ENODEV;
  fe_slave->dvb = adap->fe_adap[0].fe->dvb;
  fe_slave->ops.tuner_ops.set_params = dib8096_set_param_override;
 }
 tun_i2c = st->dib8000_ops.get_i2c_master(adap->fe_adap[0].fe, DIBX000_I2C_INTERFACE_TUNER, 1);
 if (dvb_attach(dib0090_register, adap->fe_adap[0].fe, tun_i2c, &dib809x_dib0090_config) == ((void*)0))
  return -ENODEV;

 st->set_param_save = adap->fe_adap[0].fe->ops.tuner_ops.set_params;
 adap->fe_adap[0].fe->ops.tuner_ops.set_params = dib8096_set_param_override;

 return 0;
}
