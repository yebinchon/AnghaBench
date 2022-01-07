
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct em28xx {int dummy; } ;


 int em28xx_write_regs (struct em28xx*,int ,int *,int) ;

int em28xx_write_reg(struct em28xx *dev, u16 reg, u8 val)
{
 return em28xx_write_regs(dev, reg, &val, 1);
}
