
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe {int dummy; } ;


 int spi_reg_read (struct stmpe*,int) ;

__attribute__((used)) static int spi_block_read(struct stmpe *stmpe, u8 reg, u8 length, u8 *values)
{
 int ret, i;

 for (i = 0; i < length; i++) {
  ret = spi_reg_read(stmpe, reg + i);
  if (ret < 0)
   return ret;
  *(values + i) = ret;
 }

 return 0;
}
