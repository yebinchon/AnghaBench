
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda10023_state {int reg0; } ;


 int tda10023_writereg (struct tda10023_state*,int,int) ;

__attribute__((used)) static int tda10023_setup_reg0 (struct tda10023_state* state, u8 reg0)
{
 reg0 |= state->reg0 & 0x63;

 tda10023_writereg (state, 0x00, reg0 & 0xfe);
 tda10023_writereg (state, 0x00, reg0 | 0x01);

 state->reg0 = reg0;
 return 0;
}
