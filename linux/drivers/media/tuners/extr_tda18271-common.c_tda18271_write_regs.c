
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int __tda18271_write_regs (struct dvb_frontend*,int,int,int) ;

int tda18271_write_regs(struct dvb_frontend *fe, int idx, int len)
{
 return __tda18271_write_regs(fe, idx, len, 1);
}
