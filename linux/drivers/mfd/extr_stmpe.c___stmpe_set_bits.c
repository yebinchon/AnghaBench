
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe {int dummy; } ;


 int __stmpe_reg_read (struct stmpe*,int) ;
 int __stmpe_reg_write (struct stmpe*,int,int) ;

__attribute__((used)) static int __stmpe_set_bits(struct stmpe *stmpe, u8 reg, u8 mask, u8 val)
{
 int ret;

 ret = __stmpe_reg_read(stmpe, reg);
 if (ret < 0)
  return ret;

 ret &= ~mask;
 ret |= val;

 return __stmpe_reg_write(stmpe, reg, ret);
}
