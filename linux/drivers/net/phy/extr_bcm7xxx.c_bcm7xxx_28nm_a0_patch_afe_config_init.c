
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int AFE_HPF_TRIM_OTHERS ;
 int AFE_RXCONFIG_2 ;
 int DSP_TAP10 ;
 int bcm_phy_r_rc_cal_reset (struct phy_device*) ;
 int bcm_phy_write_misc (struct phy_device*,int,int,...) ;

__attribute__((used)) static int bcm7xxx_28nm_a0_patch_afe_config_init(struct phy_device *phydev)
{

 bcm_phy_write_misc(phydev, AFE_RXCONFIG_2, 0xd003);


 bcm_phy_write_misc(phydev, DSP_TAP10, 0x791b);


 bcm_phy_write_misc(phydev, AFE_HPF_TRIM_OTHERS, 0x10e3);


 bcm_phy_write_misc(phydev, 0x21, 0x2, 0x87f6);


 bcm_phy_write_misc(phydev, 0x22, 0x2, 0x017d);


 bcm_phy_write_misc(phydev, 0x26, 0x2, 0x0015);

 bcm_phy_r_rc_cal_reset(phydev);

 return 0;
}
