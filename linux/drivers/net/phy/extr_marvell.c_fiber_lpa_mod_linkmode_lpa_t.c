
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ETHTOOL_LINK_MODE_1000baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_1000baseT_Half_BIT ;
 int LPA_FIBER_1000FULL ;
 int LPA_FIBER_1000HALF ;
 int linkmode_mod_bit (int ,unsigned long*,int) ;

__attribute__((used)) static void fiber_lpa_mod_linkmode_lpa_t(unsigned long *advertising, u32 lpa)
{
 linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
    advertising, lpa & LPA_FIBER_1000HALF);

 linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
    advertising, lpa & LPA_FIBER_1000FULL);
}
