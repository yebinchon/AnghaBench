
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int SMI_ADDR_TSTCNTL ;
 int SMI_ADDR_TSTWRITE ;
 int TSTCNTL_WR ;
 int WR_ADDR_A7CFG ;
 int phy_write (struct phy_device*,int ,int) ;
 int rockchip_close_tstmode (struct phy_device*) ;
 int rockchip_init_tstmode (struct phy_device*) ;

__attribute__((used)) static int rockchip_integrated_phy_analog_init(struct phy_device *phydev)
{
 int ret;

 ret = rockchip_init_tstmode(phydev);
 if (ret)
  return ret;





 ret = phy_write(phydev, SMI_ADDR_TSTWRITE, 0xB);
 if (ret)
  return ret;
 ret = phy_write(phydev, SMI_ADDR_TSTCNTL, TSTCNTL_WR | WR_ADDR_A7CFG);
 if (ret)
  return ret;

 return rockchip_close_tstmode(phydev);
}
