
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ves1820_state {int dummy; } ;
struct dvb_frontend {struct ves1820_state* demodulator_priv; } ;


 int ves1820_readreg (struct ves1820_state*,int) ;

__attribute__((used)) static int ves1820_read_signal_strength(struct dvb_frontend* fe, u16* strength)
{
 struct ves1820_state* state = fe->demodulator_priv;

 u8 gain = ves1820_readreg(state, 0x17);
 *strength = (gain << 8) | gain;

 return 0;
}
