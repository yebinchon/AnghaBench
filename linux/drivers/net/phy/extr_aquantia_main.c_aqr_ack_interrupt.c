
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MDIO_AN_TX_VEND_INT_STATUS2 ;
 int MDIO_MMD_AN ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

__attribute__((used)) static int aqr_ack_interrupt(struct phy_device *phydev)
{
 int reg;

 reg = phy_read_mmd(phydev, MDIO_MMD_AN,
      MDIO_AN_TX_VEND_INT_STATUS2);
 return (reg < 0) ? reg : 0;
}
