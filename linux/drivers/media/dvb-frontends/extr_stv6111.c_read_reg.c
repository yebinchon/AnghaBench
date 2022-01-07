
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv {int adr; int i2c; } ;


 int i2c_read (int ,int ,int *,int,int *,int) ;

__attribute__((used)) static int read_reg(struct stv *state, u8 reg, u8 *val)
{
 return i2c_read(state->i2c, state->adr, &reg, 1, val, 1);
}
