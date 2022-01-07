
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ves1x93_state {int dummy; } ;
struct dvb_frontend {struct ves1x93_state* demodulator_priv; } ;


 int kfree (struct ves1x93_state*) ;

__attribute__((used)) static void ves1x93_release(struct dvb_frontend* fe)
{
 struct ves1x93_state* state = fe->demodulator_priv;
 kfree(state);
}
