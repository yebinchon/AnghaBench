
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int iftype; } ;
struct brcmf_if {TYPE_1__* vif; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {struct wireless_dev wdev; } ;



enum nl80211_iftype brcmf_cfg80211_get_iftype(struct brcmf_if *ifp)
{
 struct wireless_dev *wdev = &ifp->vif->wdev;

 return wdev->iftype;
}
