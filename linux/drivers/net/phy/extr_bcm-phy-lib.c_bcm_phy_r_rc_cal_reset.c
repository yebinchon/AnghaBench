
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int bcm_phy_write_exp_sel (struct phy_device*,int,int) ;

void bcm_phy_r_rc_cal_reset(struct phy_device *phydev)
{

 bcm_phy_write_exp_sel(phydev, 0x00b0, 0x0010);


 bcm_phy_write_exp_sel(phydev, 0x00b0, 0x0000);
}
