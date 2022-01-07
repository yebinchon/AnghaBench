
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int lpphy_enable_rx_gain_override (struct b43_wldev*) ;
 int lpphy_rev0_1_set_rx_gain (struct b43_wldev*,int ) ;
 int lpphy_rev2plus_set_rx_gain (struct b43_wldev*,int ) ;

__attribute__((used)) static void lpphy_set_rx_gain(struct b43_wldev *dev, u32 gain)
{
 if (dev->phy.rev < 2)
  lpphy_rev0_1_set_rx_gain(dev, gain);
 else
  lpphy_rev2plus_set_rx_gain(dev, gain);
 lpphy_enable_rx_gain_override(dev);
}
