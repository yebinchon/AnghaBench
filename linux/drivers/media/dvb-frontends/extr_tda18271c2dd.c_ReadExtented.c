
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda_state {int adr; int i2c; } ;


 int NUM_REGS ;
 int i2c_readn (int ,int ,int *,int ) ;

__attribute__((used)) static int ReadExtented(struct tda_state *state, u8 * Regs)
{
 return i2c_readn(state->i2c, state->adr, Regs, NUM_REGS);
}
