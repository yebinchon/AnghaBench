
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tda8261_state {int frequency; } ;
struct dvb_frontend {struct tda8261_state* tuner_priv; } ;



__attribute__((used)) static int tda8261_get_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct tda8261_state *state = fe->tuner_priv;

 *frequency = state->frequency;

 return 0;
}
