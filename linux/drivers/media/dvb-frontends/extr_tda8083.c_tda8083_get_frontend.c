
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;
struct dvb_frontend {struct tda8083_state* demodulator_priv; } ;
struct dtv_frontend_properties {int fec_inner; int inversion; } ;


 int INVERSION_OFF ;
 int INVERSION_ON ;
 int tda8083_get_fec (struct tda8083_state*) ;
 int tda8083_readreg (struct tda8083_state*,int) ;

__attribute__((used)) static int tda8083_get_frontend(struct dvb_frontend *fe,
    struct dtv_frontend_properties *p)
{
 struct tda8083_state* state = fe->demodulator_priv;



 p->inversion = (tda8083_readreg (state, 0x0e) & 0x80) ?
   INVERSION_ON : INVERSION_OFF;
 p->fec_inner = tda8083_get_fec(state);


 return 0;
}
