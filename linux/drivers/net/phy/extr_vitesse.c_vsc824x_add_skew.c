
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_VSC8244_EXTCON1_RX_SKEW ;
 int MII_VSC8244_EXTCON1_RX_SKEW_MASK ;
 int MII_VSC8244_EXTCON1_TX_SKEW ;
 int MII_VSC8244_EXTCON1_TX_SKEW_MASK ;
 int MII_VSC8244_EXT_CON1 ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int vsc824x_add_skew(struct phy_device *phydev)
{
 int err;
 int extcon;

 extcon = phy_read(phydev, MII_VSC8244_EXT_CON1);

 if (extcon < 0)
  return extcon;

 extcon &= ~(MII_VSC8244_EXTCON1_TX_SKEW_MASK |
   MII_VSC8244_EXTCON1_RX_SKEW_MASK);

 extcon |= (MII_VSC8244_EXTCON1_TX_SKEW |
   MII_VSC8244_EXTCON1_RX_SKEW);

 err = phy_write(phydev, MII_VSC8244_EXT_CON1, extcon);

 return err;
}
