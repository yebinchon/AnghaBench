
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zl10353_state {int dummy; } ;
struct dvb_frontend {struct zl10353_state* demodulator_priv; } ;


 int kfree (struct zl10353_state*) ;

__attribute__((used)) static void zl10353_release(struct dvb_frontend *fe)
{
 struct zl10353_state *state = fe->demodulator_priv;
 kfree(state);
}
