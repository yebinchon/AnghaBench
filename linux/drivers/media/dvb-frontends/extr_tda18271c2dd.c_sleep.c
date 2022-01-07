
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda_state {int dummy; } ;
struct dvb_frontend {struct tda_state* tuner_priv; } ;


 int StandBy (struct tda_state*) ;

__attribute__((used)) static int sleep(struct dvb_frontend *fe)
{
 struct tda_state *state = fe->tuner_priv;

 StandBy(state);
 return 0;
}
