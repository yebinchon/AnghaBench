
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zl10036_state {int dummy; } ;
struct dvb_frontend {struct zl10036_state* tuner_priv; } ;


 int kfree (struct zl10036_state*) ;

__attribute__((used)) static void zl10036_release(struct dvb_frontend *fe)
{
 struct zl10036_state *state = fe->tuner_priv;

 fe->tuner_priv = ((void*)0);
 kfree(state);
}
