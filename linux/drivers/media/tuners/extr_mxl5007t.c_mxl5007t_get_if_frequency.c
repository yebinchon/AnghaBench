
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxl5007t_state {int if_freq; } ;
struct dvb_frontend {struct mxl5007t_state* tuner_priv; } ;
__attribute__((used)) static int mxl5007t_get_if_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct mxl5007t_state *state = fe->tuner_priv;

 *frequency = 0;

 switch (state->if_freq) {
 case 133:
  *frequency = 4000000;
  break;
 case 134:
  *frequency = 4500000;
  break;
 case 135:
  *frequency = 4570000;
  break;
 case 131:
  *frequency = 5000000;
  break;
 case 132:
  *frequency = 5380000;
  break;
 case 129:
  *frequency = 6000000;
  break;
 case 130:
  *frequency = 6280000;
  break;
 case 128:
  *frequency = 9191500;
  break;
 case 138:
  *frequency = 35250000;
  break;
 case 137:
  *frequency = 36150000;
  break;
 case 136:
  *frequency = 44000000;
  break;
 }
 return 0;
}
