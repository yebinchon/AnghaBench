
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ves1820_state {int dummy; } ;
struct dvb_frontend {struct ves1820_state* demodulator_priv; } ;


 int ves1820_readreg (struct ves1820_state*,int) ;

__attribute__((used)) static int ves1820_read_ber(struct dvb_frontend* fe, u32* ber)
{
 struct ves1820_state* state = fe->demodulator_priv;

 u32 _ber = ves1820_readreg(state, 0x14) |
   (ves1820_readreg(state, 0x15) << 8) |
   ((ves1820_readreg(state, 0x16) & 0x0f) << 16);
 *ber = 10 * _ber;

 return 0;
}
