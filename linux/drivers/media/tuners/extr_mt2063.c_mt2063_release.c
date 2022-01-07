
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt2063_state {int dummy; } ;
struct dvb_frontend {struct mt2063_state* tuner_priv; } ;


 int dprintk (int,char*) ;
 int kfree (struct mt2063_state*) ;

__attribute__((used)) static void mt2063_release(struct dvb_frontend *fe)
{
 struct mt2063_state *state = fe->tuner_priv;

 dprintk(2, "\n");

 fe->tuner_priv = ((void*)0);
 kfree(state);
}
