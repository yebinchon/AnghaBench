
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct b43_wl {TYPE_4__* hw; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct TYPE_7__ {TYPE_2__ chandef; } ;
struct TYPE_8__ {TYPE_3__ conf; } ;
struct TYPE_5__ {int band; } ;



__attribute__((used)) static inline enum nl80211_band b43_current_band(struct b43_wl *wl)
{
 return wl->hw->conf.chandef.chan->band;
}
