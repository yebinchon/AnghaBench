
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan9303 {int regmap; } ;


 int EINVAL ;
 scalar_t__ LAN9303_VIRT_PHY_BASE ;
 int MII_EXPANSION ;
 int lan9303_read (int ,scalar_t__,int*) ;

__attribute__((used)) static int lan9303_virt_phy_reg_read(struct lan9303 *chip, int regnum)
{
 int ret;
 u32 val;

 if (regnum > MII_EXPANSION)
  return -EINVAL;

 ret = lan9303_read(chip->regmap, LAN9303_VIRT_PHY_BASE + regnum, &val);
 if (ret)
  return ret;

 return val & 0xffff;
}
