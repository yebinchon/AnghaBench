
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_priv {unsigned char* tda18271_regs; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 size_t R_EP4 ;
 size_t R_TM ;
 int msleep (int) ;
 int tda18271_lookup_thermometer (struct dvb_frontend*) ;
 int tda18271_read_regs (struct dvb_frontend*) ;
 int tda18271_write_regs (struct dvb_frontend*,size_t,int) ;

__attribute__((used)) static int tda18271_read_thermometer(struct dvb_frontend *fe)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 int tm;


 regs[R_TM] |= 0x10;
 tda18271_write_regs(fe, R_TM, 1);


 tda18271_read_regs(fe);

 if ((((regs[R_TM] & 0x0f) == 0x00) && ((regs[R_TM] & 0x20) == 0x20)) ||
     (((regs[R_TM] & 0x0f) == 0x08) && ((regs[R_TM] & 0x20) == 0x00))) {

  if ((regs[R_TM] & 0x20) == 0x20)
   regs[R_TM] &= ~0x20;
  else
   regs[R_TM] |= 0x20;

  tda18271_write_regs(fe, R_TM, 1);

  msleep(10);


  tda18271_read_regs(fe);
 }

 tm = tda18271_lookup_thermometer(fe);


 regs[R_TM] &= ~0x10;
 tda18271_write_regs(fe, R_TM, 1);


 regs[R_EP4] &= ~0x03;
 tda18271_write_regs(fe, R_EP4, 1);

 return tm;
}
