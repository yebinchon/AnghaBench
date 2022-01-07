
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tda10021_state {int dummy; } ;
struct dvb_frontend {struct tda10021_state* demodulator_priv; } ;


 int tda10021_readreg (struct tda10021_state*,int) ;

__attribute__((used)) static int tda10021_read_signal_strength(struct dvb_frontend* fe, u16* strength)
{
 struct tda10021_state* state = fe->demodulator_priv;

 u8 config = tda10021_readreg(state, 0x02);
 u8 gain = tda10021_readreg(state, 0x17);
 if (config & 0x02)

  gain = ~gain;
 *strength = (gain << 8) | gain;

 return 0;
}
