
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_BCM54XX_ECR ;
 int MII_BCM54XX_ECR_IM ;
 int MII_BCM54XX_IMR ;
 int MII_BCM54XX_INT_DUPLEX ;
 int MII_BCM54XX_INT_LINK ;
 int MII_BCM54XX_INT_SPEED ;
 int bcm_cygnus_afe_config (struct phy_device*) ;
 int bcm_phy_enable_apd (struct phy_device*,int) ;
 int bcm_phy_set_eee (struct phy_device*,int) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm_cygnus_config_init(struct phy_device *phydev)
{
 int reg, rc;

 reg = phy_read(phydev, MII_BCM54XX_ECR);
 if (reg < 0)
  return reg;


 reg |= MII_BCM54XX_ECR_IM;
 rc = phy_write(phydev, MII_BCM54XX_ECR, reg);
 if (rc)
  return rc;


 reg = ~(MII_BCM54XX_INT_DUPLEX |
  MII_BCM54XX_INT_SPEED |
  MII_BCM54XX_INT_LINK);
 rc = phy_write(phydev, MII_BCM54XX_IMR, reg);
 if (rc)
  return rc;


 rc = bcm_cygnus_afe_config(phydev);
 if (rc)
  return rc;


 rc = bcm_phy_set_eee(phydev, 1);
 if (rc)
  return rc;


 return bcm_phy_enable_apd(phydev, 0);
}
