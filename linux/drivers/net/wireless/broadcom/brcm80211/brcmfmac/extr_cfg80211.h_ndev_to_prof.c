
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct brcmf_if {TYPE_1__* vif; } ;
struct brcmf_cfg80211_profile {int dummy; } ;
struct TYPE_2__ {struct brcmf_cfg80211_profile profile; } ;


 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline struct brcmf_cfg80211_profile *ndev_to_prof(struct net_device *nd)
{
 struct brcmf_if *ifp = netdev_priv(nd);
 return &ifp->vif->profile;
}
