
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; } ;


 int ETHTOOL_LINK_MODE_Pause_BIT ;
 int MII_BCM63XX_IR ;
 int MII_BCM63XX_IR_DUPLEX ;
 int MII_BCM63XX_IR_EN ;
 int MII_BCM63XX_IR_GMASK ;
 int MII_BCM63XX_IR_LINK ;
 int MII_BCM63XX_IR_SPEED ;
 int linkmode_set_bit (int ,int ) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm63xx_config_init(struct phy_device *phydev)
{
 int reg, err;


 linkmode_set_bit(ETHTOOL_LINK_MODE_Pause_BIT, phydev->supported);

 reg = phy_read(phydev, MII_BCM63XX_IR);
 if (reg < 0)
  return reg;


 reg |= MII_BCM63XX_IR_GMASK;
 err = phy_write(phydev, MII_BCM63XX_IR, reg);
 if (err < 0)
  return err;


 reg = ~(MII_BCM63XX_IR_DUPLEX |
  MII_BCM63XX_IR_SPEED |
  MII_BCM63XX_IR_LINK) |
  MII_BCM63XX_IR_EN;
 return phy_write(phydev, MII_BCM63XX_IR, reg);
}
