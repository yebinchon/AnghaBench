
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int TSTCNTL ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static void meson_gxl_close_banks(struct phy_device *phydev)
{
 phy_write(phydev, TSTCNTL, 0);
}
