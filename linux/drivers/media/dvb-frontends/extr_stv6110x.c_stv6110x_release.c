
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv6110x_state {int dummy; } ;
struct dvb_frontend {struct stv6110x_state* tuner_priv; } ;


 int kfree (struct stv6110x_state*) ;

__attribute__((used)) static void stv6110x_release(struct dvb_frontend *fe)
{
 struct stv6110x_state *stv6110x = fe->tuner_priv;

 fe->tuner_priv = ((void*)0);
 kfree(stv6110x);
}
