
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int SMI_ADDR_TSTCNTL ;
 int TSTMODE_DISABLE ;
 int TSTMODE_ENABLE ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int rockchip_init_tstmode(struct phy_device *phydev)
{
 int ret;


 ret = phy_write(phydev, SMI_ADDR_TSTCNTL, TSTMODE_ENABLE);
 if (ret)
  return ret;

 ret = phy_write(phydev, SMI_ADDR_TSTCNTL, TSTMODE_DISABLE);
 if (ret)
  return ret;

 return phy_write(phydev, SMI_ADDR_TSTCNTL, TSTMODE_ENABLE);
}
