
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_priv {unsigned char* tda18271_regs; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int DBG_ADV ;
 size_t R_EP3 ;
 int tda18271_debug ;
 int tda18271_write_regs (struct dvb_frontend*,size_t,int) ;
 int tda_dbg (char*,int,int,int) ;

int tda18271_set_standby_mode(struct dvb_frontend *fe,
         int sm, int sm_lt, int sm_xt)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;

 if (tda18271_debug & DBG_ADV)
  tda_dbg("sm = %d, sm_lt = %d, sm_xt = %d\n", sm, sm_lt, sm_xt);

 regs[R_EP3] &= ~0xe0;
 regs[R_EP3] |= (sm ? (1 << 7) : 0) |
   (sm_lt ? (1 << 6) : 0) |
   (sm_xt ? (1 << 5) : 0);

 return tda18271_write_regs(fe, R_EP3, 1);
}
