
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;


 int BCM_CL45VEN_EEE_ADV ;
 int BRCM_CL45VEN_EEE_CONTROL ;
 int LPI_FEATURE_EN ;
 int LPI_FEATURE_EN_DIG1000X ;
 int MDIO_EEE_1000T ;
 int MDIO_EEE_100TX ;
 int MDIO_MMD_AN ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int ) ;

int bcm_phy_set_eee(struct phy_device *phydev, bool enable)
{
 int val;


 val = phy_read_mmd(phydev, MDIO_MMD_AN, BRCM_CL45VEN_EEE_CONTROL);
 if (val < 0)
  return val;

 if (enable)
  val |= LPI_FEATURE_EN | LPI_FEATURE_EN_DIG1000X;
 else
  val &= ~(LPI_FEATURE_EN | LPI_FEATURE_EN_DIG1000X);

 phy_write_mmd(phydev, MDIO_MMD_AN, BRCM_CL45VEN_EEE_CONTROL, (u32)val);


 val = phy_read_mmd(phydev, MDIO_MMD_AN, BCM_CL45VEN_EEE_ADV);
 if (val < 0)
  return val;

 if (enable)
  val |= (MDIO_EEE_100TX | MDIO_EEE_1000T);
 else
  val &= ~(MDIO_EEE_100TX | MDIO_EEE_1000T);

 phy_write_mmd(phydev, MDIO_MMD_AN, BCM_CL45VEN_EEE_ADV, (u32)val);

 return 0;
}
