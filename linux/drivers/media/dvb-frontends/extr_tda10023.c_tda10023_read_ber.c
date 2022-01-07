
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tda10023_state {int dummy; } ;
struct dvb_frontend {struct tda10023_state* demodulator_priv; } ;


 int tda10023_readreg (struct tda10023_state*,int) ;
 int tda10023_writebit (struct tda10023_state*,int,int,int) ;

__attribute__((used)) static int tda10023_read_ber(struct dvb_frontend* fe, u32* ber)
{
 struct tda10023_state* state = fe->demodulator_priv;
 u8 a,b,c;
 a=tda10023_readreg(state, 0x14);
 b=tda10023_readreg(state, 0x15);
 c=tda10023_readreg(state, 0x16)&0xf;
 tda10023_writebit (state, 0x10, 0xc0, 0x00);

 *ber = a | (b<<8)| (c<<16);
 return 0;
}
