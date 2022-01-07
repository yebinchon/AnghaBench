
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;
struct adin_hw_stat {scalar_t__ reg1; scalar_t__ reg2; } ;


 int MDIO_MMD_VEND1 ;
 int phy_read_mmd (struct phy_device*,int ,scalar_t__) ;

__attribute__((used)) static int adin_read_mmd_stat_regs(struct phy_device *phydev,
       struct adin_hw_stat *stat,
       u32 *val)
{
 int ret;

 ret = phy_read_mmd(phydev, MDIO_MMD_VEND1, stat->reg1);
 if (ret < 0)
  return ret;

 *val = (ret & 0xffff);

 if (stat->reg2 == 0)
  return 0;

 ret = phy_read_mmd(phydev, MDIO_MMD_VEND1, stat->reg2);
 if (ret < 0)
  return ret;

 *val <<= 16;
 *val |= (ret & 0xffff);

 return 0;
}
