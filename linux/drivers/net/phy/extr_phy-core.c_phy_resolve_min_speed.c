
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {int advertising; int lp_advertising; } ;
struct TYPE_3__ {scalar_t__ duplex; int speed; int bit; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ DUPLEX_FULL ;
 int SPEED_UNKNOWN ;
 int __ETHTOOL_DECLARE_LINK_MODE_MASK (int ) ;
 int common ;
 int linkmode_and (int ,int ,int ) ;
 TYPE_1__* settings ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int phy_resolve_min_speed(struct phy_device *phydev, bool fdx_only)
{
 __ETHTOOL_DECLARE_LINK_MODE_MASK(common);
 int i = ARRAY_SIZE(settings);

 linkmode_and(common, phydev->lp_advertising, phydev->advertising);

 while (--i >= 0) {
  if (test_bit(settings[i].bit, common)) {
   if (fdx_only && settings[i].duplex != DUPLEX_FULL)
    continue;
   return settings[i].speed;
  }
 }

 return SPEED_UNKNOWN;
}
