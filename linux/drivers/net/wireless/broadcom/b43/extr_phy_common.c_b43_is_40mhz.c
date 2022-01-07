
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* chandef; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {scalar_t__ width; } ;


 scalar_t__ NL80211_CHAN_WIDTH_40 ;

bool b43_is_40mhz(struct b43_wldev *dev)
{
 return dev->phy.chandef->width == NL80211_CHAN_WIDTH_40;
}
