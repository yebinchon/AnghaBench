
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct em28xx {int dummy; } ;


 int em28xx_read_reg (struct em28xx*,int ) ;
 int em28xx_write_reg (struct em28xx*,int ,int) ;

int em28xx_toggle_reg_bits(struct em28xx *dev, u16 reg, u8 bitmask)
{
 int oldval;
 u8 newval;

 oldval = em28xx_read_reg(dev, reg);
 if (oldval < 0)
  return oldval;

 newval = (~oldval & bitmask) | (oldval & ~bitmask);

 return em28xx_write_reg(dev, reg, newval);
}
