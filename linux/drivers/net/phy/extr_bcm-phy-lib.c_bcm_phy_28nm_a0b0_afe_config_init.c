
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int AFE_HPF_TRIM_OTHERS ;
 int AFE_RXCONFIG_0 ;
 int AFE_RXCONFIG_1 ;
 int AFE_RX_LP_COUNTER ;
 int AFE_TX_CONFIG ;
 int DSP_TAP10 ;
 int MII_BRCM_CORE_BASE1E ;
 int PLL_PLLCTRL_1 ;
 int PLL_PLLCTRL_2 ;
 int PLL_PLLCTRL_4 ;
 int bcm_phy_r_rc_cal_reset (struct phy_device*) ;
 int bcm_phy_write_misc (struct phy_device*,int ,int) ;
 int phy_write (struct phy_device*,int ,int) ;

int bcm_phy_28nm_a0b0_afe_config_init(struct phy_device *phydev)
{



 bcm_phy_write_misc(phydev, PLL_PLLCTRL_1, 0x0048);


 bcm_phy_write_misc(phydev, PLL_PLLCTRL_2, 0x021b);




 bcm_phy_write_misc(phydev, PLL_PLLCTRL_4, 0x0e20);


 bcm_phy_write_misc(phydev, DSP_TAP10, 0x690b);


 phy_write(phydev, MII_BRCM_CORE_BASE1E, 0xd);

 bcm_phy_r_rc_cal_reset(phydev);


 bcm_phy_write_misc(phydev, AFE_RXCONFIG_0, 0xeb19);


 bcm_phy_write_misc(phydev, AFE_RXCONFIG_1, 0x9a3f);


 bcm_phy_write_misc(phydev, AFE_RX_LP_COUNTER, 0x7fc0);


 bcm_phy_write_misc(phydev, AFE_HPF_TRIM_OTHERS, 0x000b);


 bcm_phy_write_misc(phydev, AFE_TX_CONFIG, 0x0800);

 return 0;
}
