
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int SMI_ADDR_TSTCNTL ;
 int TSTMODE_DISABLE ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int rockchip_close_tstmode(struct phy_device *phydev)
{

 return phy_write(phydev, SMI_ADDR_TSTCNTL, TSTMODE_DISABLE);
}
