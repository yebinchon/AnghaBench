
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv {int adr; int i2c; int * reg; } ;


 int i2c_write (int ,int ,int*,int) ;
 int memcpy (int*,int *,int) ;

__attribute__((used)) static int write_regs(struct stv *state, int reg, int len)
{
 u8 d[12];

 memcpy(&d[1], &state->reg[reg], len);
 d[0] = reg;
 return i2c_write(state->i2c, state->adr, d, len + 1);
}
