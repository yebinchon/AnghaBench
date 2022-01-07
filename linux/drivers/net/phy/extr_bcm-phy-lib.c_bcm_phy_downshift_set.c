
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_device {int dummy; } ;


 int BCM54XX_SHD_SCR2 ;
 int BCM54XX_SHD_SCR2_WSPD_RTRY_DIS ;
 int BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_MASK ;
 int BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_OFFSET ;
 int BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT ;

 int DOWNSHIFT_DEV_DISABLE ;
 int ERANGE ;
 int MII_BCM54XX_AUXCTL_MISC_WREN ;
 int MII_BCM54XX_AUXCTL_SHDWSEL_MISC ;
 int MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN ;
 int bcm54xx_auxctl_read (struct phy_device*,int ) ;
 int bcm54xx_auxctl_write (struct phy_device*,int ,int) ;
 int bcm_phy_read_shadow (struct phy_device*,int ) ;
 int bcm_phy_write_shadow (struct phy_device*,int ,int) ;

int bcm_phy_downshift_set(struct phy_device *phydev, u8 count)
{
 int val = 0, ret = 0;


 if (count - BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_OFFSET >
     BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_MASK &&
     count != 128) {
  return -ERANGE;
 }

 val = bcm54xx_auxctl_read(phydev, MII_BCM54XX_AUXCTL_SHDWSEL_MISC);
 if (val < 0)
  return val;


 val |= MII_BCM54XX_AUXCTL_MISC_WREN;

 if (count == DOWNSHIFT_DEV_DISABLE) {
  val &= ~MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN;
  return bcm54xx_auxctl_write(phydev,
         MII_BCM54XX_AUXCTL_SHDWSEL_MISC,
         val);
 } else {
  val |= MII_BCM54XX_AUXCTL_SHDWSEL_MISC_WIRESPEED_EN;
  ret = bcm54xx_auxctl_write(phydev,
        MII_BCM54XX_AUXCTL_SHDWSEL_MISC,
        val);
  if (ret < 0)
   return ret;
 }

 val = bcm_phy_read_shadow(phydev, BCM54XX_SHD_SCR2);
 val &= ~(BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_MASK <<
   BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT |
   BCM54XX_SHD_SCR2_WSPD_RTRY_DIS);

 switch (count) {
 case 1:
  val |= BCM54XX_SHD_SCR2_WSPD_RTRY_DIS;
  break;
 case 128:
  val |= 1 << BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT;
  break;
 default:
  val |= (count - BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_OFFSET) <<
   BCM54XX_SHD_SCR2_WSPD_RTRY_LMT_SHIFT;
  break;
 }

 return bcm_phy_write_shadow(phydev, BCM54XX_SHD_SCR2, val);
}
