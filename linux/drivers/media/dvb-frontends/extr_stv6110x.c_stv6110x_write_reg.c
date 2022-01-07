
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv6110x_state {int dummy; } ;


 int stv6110x_write_regs (struct stv6110x_state*,int ,int *,int) ;

__attribute__((used)) static int stv6110x_write_reg(struct stv6110x_state *stv6110x, u8 reg, u8 data)
{
 u8 tmp = data;

 return stv6110x_write_regs(stv6110x, reg, &tmp, 1);
}
