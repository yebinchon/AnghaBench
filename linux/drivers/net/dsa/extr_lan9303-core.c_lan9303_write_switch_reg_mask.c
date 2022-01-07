
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct lan9303 {int dummy; } ;


 int lan9303_read_switch_reg (struct lan9303*,int ,int*) ;
 int lan9303_write_switch_reg (struct lan9303*,int ,int) ;

__attribute__((used)) static int lan9303_write_switch_reg_mask(struct lan9303 *chip, u16 regnum,
      u32 val, u32 mask)
{
 int ret;
 u32 reg;

 ret = lan9303_read_switch_reg(chip, regnum, &reg);
 if (ret)
  return ret;

 reg = (reg & ~mask) | val;

 return lan9303_write_switch_reg(chip, regnum, reg);
}
