
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda18271_priv {unsigned char* tda18271_regs; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;
struct TYPE_2__ {unsigned char d; int r1; int r0; } ;


 size_t R_TM ;
 TYPE_1__* tda18271_thermometer ;
 int tda_map (char*,int,int) ;

int tda18271_lookup_thermometer(struct dvb_frontend *fe)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 int val, i = 0;

 while (tda18271_thermometer[i].d < (regs[R_TM] & 0x0f)) {
  if (tda18271_thermometer[i + 1].d == 0)
   break;
  i++;
 }

 if ((regs[R_TM] & 0x20) == 0x20)
  val = tda18271_thermometer[i].r1;
 else
  val = tda18271_thermometer[i].r0;

 tda_map("(%d) tm = %d\n", i, val);

 return val;
}
