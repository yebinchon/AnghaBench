
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;






 int MII_AUTO_MDIX_EN ;
 int MII_INTERNAL_CTRL_STATUS ;
 int MII_MDIX_EN ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int rockchip_set_polarity(struct phy_device *phydev, int polarity)
{
 int reg, err, val;


 reg = phy_read(phydev, MII_INTERNAL_CTRL_STATUS);
 if (reg < 0)
  return reg;

 reg &= ~MII_AUTO_MDIX_EN;
 val = reg;
 switch (polarity) {
 case 131:
  val &= ~MII_MDIX_EN;
  break;
 case 128:
  val |= MII_MDIX_EN;
  break;
 case 130:
 case 129:
 default:
  return 0;
 }

 if (val != reg) {

  err = phy_write(phydev, MII_INTERNAL_CTRL_STATUS, val);
  if (err)
   return err;
 }

 return 0;
}
