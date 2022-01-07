
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tda665x_state {int frequency; } ;
struct dvb_frontend {struct tda665x_state* tuner_priv; } ;



__attribute__((used)) static int tda665x_get_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct tda665x_state *state = fe->tuner_priv;

 *frequency = state->frequency;

 return 0;
}
