
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MDIO_AN_TX_VEND_INT_STATUS1 ;
 int MDIO_AN_TX_VEND_INT_STATUS1_DOWNSHIFT ;
 int MDIO_MMD_AN ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

__attribute__((used)) static int aqr107_read_downshift_event(struct phy_device *phydev)
{
 int val;

 val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_TX_VEND_INT_STATUS1);
 if (val < 0)
  return val;

 return !!(val & MDIO_AN_TX_VEND_INT_STATUS1_DOWNSHIFT);
}
