
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {int addr; int * adap; } ;
struct tuner_simple_priv {scalar_t__ frequency; scalar_t__ bandwidth; TYPE_3__ i2c_props; } ;
struct TYPE_4__ {int (* standby ) (struct dvb_frontend*) ;} ;
struct TYPE_5__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;TYPE_1__ analog_ops; } ;
struct dtv_frontend_properties {scalar_t__ delivery_system; scalar_t__ bandwidth_hz; scalar_t__ frequency; } ;
struct dvb_frontend {TYPE_2__ ops; struct tuner_simple_priv* tuner_priv; struct dtv_frontend_properties dtv_property_cache; } ;


 int EINVAL ;
 scalar_t__ simple_dvb_configure (struct dvb_frontend*,int *,scalar_t__,scalar_t__,scalar_t__) ;
 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int) ;
 int tuner_i2c_xfer_send (TYPE_3__*,int *,int) ;

__attribute__((used)) static int simple_dvb_set_params(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 u32 delsys = c->delivery_system;
 u32 bw = c->bandwidth_hz;
 u32 freq = c->frequency;
 struct tuner_simple_priv *priv = fe->tuner_priv;
 u32 frequency;
 u32 prev_freq, prev_bw;
 int ret;
 u8 buf[5];

 if (priv->i2c_props.adap == ((void*)0))
  return -EINVAL;

 prev_freq = priv->frequency;
 prev_bw = priv->bandwidth;

 frequency = simple_dvb_configure(fe, buf+1, delsys, freq, bw);
 if (frequency == 0)
  return -EINVAL;

 buf[0] = priv->i2c_props.addr;

 priv->frequency = frequency;
 priv->bandwidth = bw;


 if (fe->ops.analog_ops.standby)
  fe->ops.analog_ops.standby(fe);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);



 ret = tuner_i2c_xfer_send(&priv->i2c_props, buf+1, 4);
 if (ret != 4)
  goto fail;

 return 0;
fail:

 priv->frequency = prev_freq;
 priv->bandwidth = prev_bw;

 return ret;
}
