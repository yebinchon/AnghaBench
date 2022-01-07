
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;


 int MDIO_MMD_VEND2 ;
 int XWAY_MDIO_IMASK ;
 int XWAY_MDIO_ISTAT ;
 int XWAY_MMD_LED0H ;
 int XWAY_MMD_LED0L ;
 int XWAY_MMD_LED1H ;
 int XWAY_MMD_LED1L ;
 int XWAY_MMD_LED2H ;
 int XWAY_MMD_LED2L ;
 int XWAY_MMD_LEDCH ;
 int XWAY_MMD_LEDCH_CBLINK_NONE ;
 int XWAY_MMD_LEDCH_FBF_F16HZ ;
 int XWAY_MMD_LEDCH_NACS_NONE ;
 int XWAY_MMD_LEDCH_SBF_F02HZ ;
 int XWAY_MMD_LEDCH_SCAN_NONE ;
 int XWAY_MMD_LEDCL ;
 int XWAY_MMD_LEDxH_BLINKF_NONE ;
 int XWAY_MMD_LEDxH_CON_LINK10XX ;
 int XWAY_MMD_LEDxL_BLINKS_NONE ;
 int XWAY_MMD_LEDxL_PULSE_RXACT ;
 int XWAY_MMD_LEDxL_PULSE_TXACT ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int ) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

__attribute__((used)) static int xway_gphy_config_init(struct phy_device *phydev)
{
 int err;
 u32 ledxh;
 u32 ledxl;


 err = phy_write(phydev, XWAY_MDIO_IMASK, 0);
 if (err)
  return err;


 phy_read(phydev, XWAY_MDIO_ISTAT);

 phy_write_mmd(phydev, MDIO_MMD_VEND2, XWAY_MMD_LEDCH,
        XWAY_MMD_LEDCH_NACS_NONE |
        XWAY_MMD_LEDCH_SBF_F02HZ |
        XWAY_MMD_LEDCH_FBF_F16HZ);
 phy_write_mmd(phydev, MDIO_MMD_VEND2, XWAY_MMD_LEDCL,
        XWAY_MMD_LEDCH_CBLINK_NONE |
        XWAY_MMD_LEDCH_SCAN_NONE);







 ledxh = XWAY_MMD_LEDxH_BLINKF_NONE | XWAY_MMD_LEDxH_CON_LINK10XX;
 ledxl = XWAY_MMD_LEDxL_PULSE_TXACT | XWAY_MMD_LEDxL_PULSE_RXACT |
  XWAY_MMD_LEDxL_BLINKS_NONE;
 phy_write_mmd(phydev, MDIO_MMD_VEND2, XWAY_MMD_LED0H, ledxh);
 phy_write_mmd(phydev, MDIO_MMD_VEND2, XWAY_MMD_LED0L, ledxl);
 phy_write_mmd(phydev, MDIO_MMD_VEND2, XWAY_MMD_LED1H, ledxh);
 phy_write_mmd(phydev, MDIO_MMD_VEND2, XWAY_MMD_LED1L, ledxl);
 phy_write_mmd(phydev, MDIO_MMD_VEND2, XWAY_MMD_LED2H, ledxh);
 phy_write_mmd(phydev, MDIO_MMD_VEND2, XWAY_MMD_LED2L, ledxl);

 return 0;
}
