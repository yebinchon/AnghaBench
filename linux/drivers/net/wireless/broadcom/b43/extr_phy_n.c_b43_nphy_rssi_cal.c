
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int N_RSSI_NB ;
 int N_RSSI_W1 ;
 int N_RSSI_W2 ;
 int b43_nphy_rev2_rssi_cal (struct b43_wldev*,int ) ;
 int b43_nphy_rev3_rssi_cal (struct b43_wldev*) ;

__attribute__((used)) static void b43_nphy_rssi_cal(struct b43_wldev *dev)
{
 if (dev->phy.rev >= 19) {

 } else if (dev->phy.rev >= 3) {
  b43_nphy_rev3_rssi_cal(dev);
 } else {
  b43_nphy_rev2_rssi_cal(dev, N_RSSI_NB);
  b43_nphy_rev2_rssi_cal(dev, N_RSSI_W1);
  b43_nphy_rev2_rssi_cal(dev, N_RSSI_W2);
 }
}
