
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int AFE_HPF_TRIM_OTHERS ;
 int AFE_RXCONFIG_0 ;
 int AFE_RXCONFIG_1 ;
 int AFE_RXCONFIG_2 ;
 int AFE_RX_LP_COUNTER ;
 int AFE_TX_CONFIG ;
 int AFE_VDAC_OTHERS_0 ;
 int AFE_VDCA_ICTRL_0 ;
 int DSP_TAP10 ;
 int MII_BRCM_CORE_BASE1E ;
 int bcm_phy_r_rc_cal_reset (struct phy_device*) ;
 int bcm_phy_write_misc (struct phy_device*,int ,int) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm7xxx_28nm_d0_afe_config_init(struct phy_device *phydev)
{

 bcm_phy_write_misc(phydev, AFE_RXCONFIG_0, 0xeb15);


 bcm_phy_write_misc(phydev, AFE_RXCONFIG_1, 0x9b2f);


 bcm_phy_write_misc(phydev, AFE_RXCONFIG_2, 0x2003);


 bcm_phy_write_misc(phydev, AFE_RX_LP_COUNTER, 0x7fc0);


 bcm_phy_write_misc(phydev, AFE_TX_CONFIG, 0x431);


 bcm_phy_write_misc(phydev, AFE_VDCA_ICTRL_0, 0xa7da);


 bcm_phy_write_misc(phydev, AFE_VDAC_OTHERS_0, 0xa020);




 bcm_phy_write_misc(phydev, AFE_HPF_TRIM_OTHERS, 0x00e3);


 phy_write(phydev, MII_BRCM_CORE_BASE1E, 0x0010);


 bcm_phy_write_misc(phydev, DSP_TAP10, 0x011b);


 bcm_phy_r_rc_cal_reset(phydev);

 return 0;
}
