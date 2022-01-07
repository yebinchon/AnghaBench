
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tda10023_state {int dummy; } ;
struct dvb_frontend {struct tda10023_state* demodulator_priv; } ;


 int tda10023_readreg (struct tda10023_state*,int) ;

__attribute__((used)) static int tda10023_read_signal_strength(struct dvb_frontend* fe, u16* strength)
{
 struct tda10023_state* state = fe->demodulator_priv;
 u8 ifgain=tda10023_readreg(state, 0x2f);

 u16 gain = ((255-tda10023_readreg(state, 0x17))) + (255-ifgain)/16;

 if (gain>0x90)
  gain=gain+2*(gain-0x90);
 if (gain>255)
  gain=255;

 *strength = (gain<<8)|gain;
 return 0;
}
