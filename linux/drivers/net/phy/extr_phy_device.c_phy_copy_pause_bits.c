
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETHTOOL_LINK_MODE_Asym_Pause_BIT ;
 int ETHTOOL_LINK_MODE_Pause_BIT ;
 int linkmode_mod_bit (int ,unsigned long*,int ) ;
 int linkmode_test_bit (int ,unsigned long*) ;

__attribute__((used)) static void phy_copy_pause_bits(unsigned long *dst, unsigned long *src)
{
 linkmode_mod_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT, dst,
  linkmode_test_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT, src));
 linkmode_mod_bit(ETHTOOL_LINK_MODE_Pause_BIT, dst,
  linkmode_test_bit(ETHTOOL_LINK_MODE_Pause_BIT, src));
}
