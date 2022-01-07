
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_PHY_HT_RF_CTL_CMD ;
 int B43_PHY_HT_RF_CTL_CMD_CHIP0_PU ;
 int B43_PHY_HT_RF_CTL_CMD_FORCE ;
 int b43_phy_mask (struct b43_wldev*,int ,int ) ;
 int b43_phy_set (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_radio_2059_init_pre(struct b43_wldev *dev)
{
 b43_phy_mask(dev, B43_PHY_HT_RF_CTL_CMD, ~B43_PHY_HT_RF_CTL_CMD_CHIP0_PU);
 b43_phy_set(dev, B43_PHY_HT_RF_CTL_CMD, B43_PHY_HT_RF_CTL_CMD_FORCE);
 b43_phy_mask(dev, B43_PHY_HT_RF_CTL_CMD, ~B43_PHY_HT_RF_CTL_CMD_FORCE);
 b43_phy_set(dev, B43_PHY_HT_RF_CTL_CMD, B43_PHY_HT_RF_CTL_CMD_CHIP0_PU);
}
