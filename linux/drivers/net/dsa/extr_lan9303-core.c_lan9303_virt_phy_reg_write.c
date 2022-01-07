
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lan9303 {int regmap; } ;


 int EINVAL ;
 scalar_t__ LAN9303_VIRT_PHY_BASE ;
 int MII_EXPANSION ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static int lan9303_virt_phy_reg_write(struct lan9303 *chip, int regnum, u16 val)
{
 if (regnum > MII_EXPANSION)
  return -EINVAL;

 return regmap_write(chip->regmap, LAN9303_VIRT_PHY_BASE + regnum, val);
}
