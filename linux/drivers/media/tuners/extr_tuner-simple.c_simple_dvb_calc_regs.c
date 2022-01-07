
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int addr; } ;
struct tuner_simple_priv {scalar_t__ bandwidth; scalar_t__ frequency; TYPE_1__ i2c_props; } ;
struct dtv_frontend_properties {scalar_t__ delivery_system; scalar_t__ bandwidth_hz; int frequency; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; struct dtv_frontend_properties dtv_property_cache; } ;


 int EINVAL ;
 scalar_t__ simple_dvb_configure (struct dvb_frontend*,int *,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int simple_dvb_calc_regs(struct dvb_frontend *fe,
    u8 *buf, int buf_len)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 u32 delsys = c->delivery_system;
 u32 bw = c->bandwidth_hz;
 struct tuner_simple_priv *priv = fe->tuner_priv;
 u32 frequency;

 if (buf_len < 5)
  return -EINVAL;

 frequency = simple_dvb_configure(fe, buf+1, delsys, c->frequency, bw);
 if (frequency == 0)
  return -EINVAL;

 buf[0] = priv->i2c_props.addr;

 priv->frequency = frequency;
 priv->bandwidth = c->bandwidth_hz;

 return 5;
}
