
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {int duplex; int speed; int advertising; int lp_advertising; } ;
struct TYPE_3__ {int duplex; int speed; int bit; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int __ETHTOOL_DECLARE_LINK_MODE_MASK (int ) ;
 int common ;
 int linkmode_and (int ,int ,int ) ;
 int phy_resolve_aneg_pause (struct phy_device*) ;
 TYPE_1__* settings ;
 scalar_t__ test_bit (int ,int ) ;

void phy_resolve_aneg_linkmode(struct phy_device *phydev)
{
 __ETHTOOL_DECLARE_LINK_MODE_MASK(common);
 int i;

 linkmode_and(common, phydev->lp_advertising, phydev->advertising);

 for (i = 0; i < ARRAY_SIZE(settings); i++)
  if (test_bit(settings[i].bit, common)) {
   phydev->speed = settings[i].speed;
   phydev->duplex = settings[i].duplex;
   break;
  }

 phy_resolve_aneg_pause(phydev);
}
