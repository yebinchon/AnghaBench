
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;
typedef enum n_rssi_type { ____Placeholder_n_rssi_type } n_rssi_type ;


 int b43_nphy_rev2_rssi_select (struct b43_wldev*,int ,int) ;
 int b43_nphy_rev3_rssi_select (struct b43_wldev*,int ,int) ;
 int b43_nphy_rssi_select_rev19 (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_nphy_rssi_select(struct b43_wldev *dev, u8 code,
     enum n_rssi_type type)
{
 if (dev->phy.rev >= 19)
  b43_nphy_rssi_select_rev19(dev, code, type);
 else if (dev->phy.rev >= 3)
  b43_nphy_rev3_rssi_select(dev, code, type);
 else
  b43_nphy_rev2_rssi_select(dev, code, type);
}
