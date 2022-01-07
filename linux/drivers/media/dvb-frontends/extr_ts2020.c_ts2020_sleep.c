
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ts2020_priv {scalar_t__ tuner; int stat_work; int dont_poll; int regmap; } ;
struct dvb_frontend {struct ts2020_priv* tuner_priv; } ;


 scalar_t__ TS2020_M88TS2020 ;
 int cancel_delayed_work_sync (int *) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static int ts2020_sleep(struct dvb_frontend *fe)
{
 struct ts2020_priv *priv = fe->tuner_priv;
 int ret;
 u8 u8tmp;

 if (priv->tuner == TS2020_M88TS2020)
  u8tmp = 0x0a;
 else
  u8tmp = 0x00;

 ret = regmap_write(priv->regmap, u8tmp, 0x00);
 if (ret < 0)
  return ret;


 if (!priv->dont_poll)
  cancel_delayed_work_sync(&priv->stat_work);
 return 0;
}
