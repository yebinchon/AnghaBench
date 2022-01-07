
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ves1x93_state {int dummy; } ;
struct dvb_frontend {struct ves1x93_state* demodulator_priv; } ;


 int ves1x93_readreg (struct ves1x93_state*,int) ;

__attribute__((used)) static int ves1x93_read_ber(struct dvb_frontend* fe, u32* ber)
{
 struct ves1x93_state* state = fe->demodulator_priv;

 *ber = ves1x93_readreg (state, 0x15);
 *ber |= (ves1x93_readreg (state, 0x16) << 8);
 *ber |= ((ves1x93_readreg (state, 0x17) & 0x0F) << 16);
 *ber *= 10;

 return 0;
}
