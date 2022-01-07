
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int AT803X_DEBUG_ADDR ;
 int AT803X_DEBUG_DATA ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int at803x_debug_reg_read(struct phy_device *phydev, u16 reg)
{
 int ret;

 ret = phy_write(phydev, AT803X_DEBUG_ADDR, reg);
 if (ret < 0)
  return ret;

 return phy_read(phydev, AT803X_DEBUG_DATA);
}
