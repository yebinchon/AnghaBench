
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ gmode; } ;
struct b43_wldev {TYPE_3__* dev; TYPE_1__ phy; } ;
struct TYPE_6__ {TYPE_2__* bus_sprom; } ;
struct TYPE_5__ {int ant_available_bg; int ant_available_a; } ;



u8 b43_ieee80211_antenna_sanitize(struct b43_wldev *dev,
      u8 antenna_nr)
{
 u8 antenna_mask;

 if (antenna_nr == 0) {

  return 0;
 }


 if (dev->phy.gmode)
  antenna_mask = dev->dev->bus_sprom->ant_available_bg;
 else
  antenna_mask = dev->dev->bus_sprom->ant_available_a;

 if (!(antenna_mask & (1 << (antenna_nr - 1)))) {

  return 0;
 }

 return antenna_nr;
}
