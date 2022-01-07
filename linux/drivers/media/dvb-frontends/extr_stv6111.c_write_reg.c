
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv {int adr; int i2c; } ;


 int i2c_write (int ,int ,int *,int) ;

__attribute__((used)) static int write_reg(struct stv *state, u8 reg, u8 val)
{
 u8 d[2] = {reg, val};

 return i2c_write(state->i2c, state->adr, d, 2);
}
