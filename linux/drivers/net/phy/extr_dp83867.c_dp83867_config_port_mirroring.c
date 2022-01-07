
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ priv; } ;
struct dp83867_private {scalar_t__ port_mirroring; } ;


 int DP83867_CFG4 ;
 int DP83867_CFG4_PORT_MIRROR_EN ;
 int DP83867_DEVADDR ;
 scalar_t__ DP83867_PORT_MIRROING_EN ;
 int phy_clear_bits_mmd (struct phy_device*,int ,int ,int ) ;
 int phy_set_bits_mmd (struct phy_device*,int ,int ,int ) ;

__attribute__((used)) static int dp83867_config_port_mirroring(struct phy_device *phydev)
{
 struct dp83867_private *dp83867 =
  (struct dp83867_private *)phydev->priv;

 if (dp83867->port_mirroring == DP83867_PORT_MIRROING_EN)
  phy_set_bits_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4,
     DP83867_CFG4_PORT_MIRROR_EN);
 else
  phy_clear_bits_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4,
       DP83867_CFG4_PORT_MIRROR_EN);
 return 0;
}
