
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda_state {int adr; int i2c; } ;


 int i2c_write (int ,int ,int *,int) ;

__attribute__((used)) static int WriteReg(struct tda_state *state, u8 SubAddr, u8 Reg)
{
 u8 msg[2] = {SubAddr, Reg};

 return i2c_write(state->i2c, state->adr, msg, 2);
}
