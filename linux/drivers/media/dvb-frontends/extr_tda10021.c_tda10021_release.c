
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda10021_state {int dummy; } ;
struct dvb_frontend {struct tda10021_state* demodulator_priv; } ;


 int kfree (struct tda10021_state*) ;

__attribute__((used)) static void tda10021_release(struct dvb_frontend* fe)
{
 struct tda10021_state* state = fe->demodulator_priv;
 kfree(state);
}
