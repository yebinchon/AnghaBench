
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stw481x {int map; } ;


 int EIO ;
 int STW_PCTL_REG_HI ;
 int STW_PCTL_REG_LO ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int stw481x_get_pctl_reg(struct stw481x *stw481x, u8 reg)
{
 u8 msb = (reg >> 3) & 0x03;
 u8 lsb = (reg << 5) & 0xe0;
 unsigned int val;
 u8 vrfy;
 int ret;

 ret = regmap_write(stw481x->map, STW_PCTL_REG_HI, msb);
 if (ret)
  return ret;
 ret = regmap_write(stw481x->map, STW_PCTL_REG_LO, lsb);
 if (ret)
  return ret;
 ret = regmap_read(stw481x->map, STW_PCTL_REG_HI, &val);
 if (ret)
  return ret;
 vrfy = (val & 0x03) << 3;
 ret = regmap_read(stw481x->map, STW_PCTL_REG_LO, &val);
 if (ret)
  return ret;
 vrfy |= ((val >> 5) & 0x07);
 if (vrfy != reg)
  return -EIO;
 return (val >> 1) & 0x0f;
}
