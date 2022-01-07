
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int TSTCNTL ;
 int TSTCNTL_TEST_MODE ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int meson_gxl_open_banks(struct phy_device *phydev)
{
 int ret;




 ret = phy_write(phydev, TSTCNTL, 0);
 if (ret)
  return ret;
 ret = phy_write(phydev, TSTCNTL, TSTCNTL_TEST_MODE);
 if (ret)
  return ret;
 ret = phy_write(phydev, TSTCNTL, 0);
 if (ret)
  return ret;
 return phy_write(phydev, TSTCNTL, TSTCNTL_TEST_MODE);
}
