
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iftype; } ;
struct brcmf_cfg80211_vif {TYPE_1__ wdev; } ;


 scalar_t__ NL80211_IFTYPE_ADHOC ;

__attribute__((used)) static bool brcmf_is_ibssmode(struct brcmf_cfg80211_vif *vif)
{
 return vif->wdev.iftype == NL80211_IFTYPE_ADHOC;
}
