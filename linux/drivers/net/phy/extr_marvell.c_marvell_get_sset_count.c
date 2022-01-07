
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; } ;


 int ARRAY_SIZE (int ) ;
 int ETHTOOL_LINK_MODE_FIBRE_BIT ;
 int NB_FIBER_STATS ;
 scalar_t__ linkmode_test_bit (int ,int ) ;
 int marvell_hw_stats ;

__attribute__((used)) static int marvell_get_sset_count(struct phy_device *phydev)
{
 if (linkmode_test_bit(ETHTOOL_LINK_MODE_FIBRE_BIT,
         phydev->supported))
  return ARRAY_SIZE(marvell_hw_stats);
 else
  return ARRAY_SIZE(marvell_hw_stats) - NB_FIBER_STATS;
}
