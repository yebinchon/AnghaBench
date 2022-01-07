
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int AT803X_DEBUG_DATA ;
 int at803x_debug_reg_read (struct phy_device*,int) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int at803x_debug_reg_mask(struct phy_device *phydev, u16 reg,
     u16 clear, u16 set)
{
 u16 val;
 int ret;

 ret = at803x_debug_reg_read(phydev, reg);
 if (ret < 0)
  return ret;

 val = ret & 0xffff;
 val &= ~clear;
 val |= set;

 return phy_write(phydev, AT803X_DEBUG_DATA, val);
}
