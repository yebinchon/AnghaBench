
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ts2020_priv {int regmap; } ;
struct dvb_frontend {struct ts2020_priv* tuner_priv; } ;


 int msleep (int) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static int ts2020_tuner_gate_ctrl(struct dvb_frontend *fe, u8 offset)
{
 struct ts2020_priv *priv = fe->tuner_priv;
 int ret;
 ret = regmap_write(priv->regmap, 0x51, 0x1f - offset);
 ret |= regmap_write(priv->regmap, 0x51, 0x1f);
 ret |= regmap_write(priv->regmap, 0x50, offset);
 ret |= regmap_write(priv->regmap, 0x50, 0x00);
 msleep(20);
 return ret;
}
