
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;






 int MII_M1011_PHY_SCR ;
 int MII_M1011_PHY_SCR_AUTO_CROSS ;
 int MII_M1011_PHY_SCR_MDI ;
 int MII_M1011_PHY_SCR_MDI_X ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int marvell_set_polarity(struct phy_device *phydev, int polarity)
{
 int reg;
 int err;
 int val;


 reg = phy_read(phydev, MII_M1011_PHY_SCR);
 if (reg < 0)
  return reg;

 val = reg;
 val &= ~MII_M1011_PHY_SCR_AUTO_CROSS;
 switch (polarity) {
 case 131:
  val |= MII_M1011_PHY_SCR_MDI;
  break;
 case 128:
  val |= MII_M1011_PHY_SCR_MDI_X;
  break;
 case 130:
 case 129:
 default:
  val |= MII_M1011_PHY_SCR_AUTO_CROSS;
  break;
 }

 if (val != reg) {

  err = phy_write(phydev, MII_M1011_PHY_SCR, val);
  if (err)
   return err;
 }

 return val != reg;
}
