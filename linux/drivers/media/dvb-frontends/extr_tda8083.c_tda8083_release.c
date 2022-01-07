
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;
struct dvb_frontend {struct tda8083_state* demodulator_priv; } ;


 int kfree (struct tda8083_state*) ;

__attribute__((used)) static void tda8083_release(struct dvb_frontend* fe)
{
 struct tda8083_state* state = fe->demodulator_priv;
 kfree(state);
}
