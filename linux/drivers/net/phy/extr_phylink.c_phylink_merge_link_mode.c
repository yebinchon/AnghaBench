
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ETHTOOL_DECLARE_LINK_MODE_MASK (int ) ;
 int linkmode_and (unsigned long*,unsigned long*,int ) ;
 int linkmode_or (unsigned long*,unsigned long*,unsigned long const*) ;
 int linkmode_zero (int ) ;
 int mask ;
 int phylink_set_port_modes (int ) ;

__attribute__((used)) static void phylink_merge_link_mode(unsigned long *dst, const unsigned long *b)
{
 __ETHTOOL_DECLARE_LINK_MODE_MASK(mask);

 linkmode_zero(mask);
 phylink_set_port_modes(mask);

 linkmode_and(dst, dst, mask);
 linkmode_or(dst, dst, b);
}
