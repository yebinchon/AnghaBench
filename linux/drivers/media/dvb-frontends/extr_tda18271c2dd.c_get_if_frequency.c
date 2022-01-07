
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tda_state {int IF; } ;
struct dvb_frontend {struct tda_state* tuner_priv; } ;



__attribute__((used)) static int get_if_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct tda_state *state = fe->tuner_priv;

 *frequency = state->IF;
 return 0;
}
