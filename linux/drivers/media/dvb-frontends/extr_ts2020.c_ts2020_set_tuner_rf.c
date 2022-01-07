
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts2020_priv {int regmap; } ;
struct dvb_frontend {struct ts2020_priv* tuner_priv; } ;


 int regmap_read (int ,int,unsigned int*) ;
 int regmap_write (int ,int,unsigned int) ;
 int ts2020_tuner_gate_ctrl (struct dvb_frontend*,int) ;

__attribute__((used)) static int ts2020_set_tuner_rf(struct dvb_frontend *fe)
{
 struct ts2020_priv *dev = fe->tuner_priv;
 int ret;
 unsigned int utmp;

 ret = regmap_read(dev->regmap, 0x3d, &utmp);
 if (ret)
  return ret;

 utmp &= 0x7f;
 if (utmp < 0x16)
  utmp = 0xa1;
 else if (utmp == 0x16)
  utmp = 0x99;
 else
  utmp = 0xf9;

 regmap_write(dev->regmap, 0x60, utmp);
 ret = ts2020_tuner_gate_ctrl(fe, 0x08);

 return ret;
}
