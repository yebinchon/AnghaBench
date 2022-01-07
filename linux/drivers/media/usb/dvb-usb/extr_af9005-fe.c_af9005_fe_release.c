
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {scalar_t__ demodulator_priv; } ;
struct af9005_fe_state {int dummy; } ;


 int kfree (struct af9005_fe_state*) ;

__attribute__((used)) static void af9005_fe_release(struct dvb_frontend *fe)
{
 struct af9005_fe_state *state =
     (struct af9005_fe_state *)fe->demodulator_priv;
 kfree(state);
}
