
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_priv {scalar_t__ role; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int TDA18271_CAL_PLL ;
 int TDA18271_MAIN_PLL ;
 scalar_t__ TDA18271_SLAVE ;
 int tda18271_charge_pump_source (struct dvb_frontend*,int ,int) ;

__attribute__((used)) static inline int charge_pump_source(struct dvb_frontend *fe, int force)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 return tda18271_charge_pump_source(fe,
        (priv->role == TDA18271_SLAVE) ?
        TDA18271_CAL_PLL :
        TDA18271_MAIN_PLL, force);
}
