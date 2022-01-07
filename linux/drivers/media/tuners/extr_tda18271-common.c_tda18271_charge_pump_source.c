
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef enum tda18271_pll { ____Placeholder_tda18271_pll } tda18271_pll ;


 int __tda18271_charge_pump_source (struct dvb_frontend*,int,int,int) ;

int tda18271_charge_pump_source(struct dvb_frontend *fe,
    enum tda18271_pll pll, int force)
{
 return __tda18271_charge_pump_source(fe, pll, force, 1);
}
