
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_setting {int dummy; } ;


 struct phy_setting const* phy_lookup_setting (int,int,unsigned long*,int) ;

__attribute__((used)) static const struct phy_setting *
phy_find_valid(int speed, int duplex, unsigned long *supported)
{
 return phy_lookup_setting(speed, duplex, supported, 0);
}
