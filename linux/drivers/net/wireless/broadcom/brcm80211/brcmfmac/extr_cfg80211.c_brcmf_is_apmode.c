
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iftype; } ;
struct brcmf_cfg80211_vif {TYPE_1__ wdev; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_P2P_GO ;

__attribute__((used)) static bool brcmf_is_apmode(struct brcmf_cfg80211_vif *vif)
{
 enum nl80211_iftype iftype;

 iftype = vif->wdev.iftype;
 return iftype == NL80211_IFTYPE_AP || iftype == NL80211_IFTYPE_P2P_GO;
}
