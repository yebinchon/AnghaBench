
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct brcmf_if {struct brcmf_cfg80211_vif* vif; } ;
struct brcmf_cfg80211_vif {int dummy; } ;


 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline struct brcmf_cfg80211_vif *ndev_to_vif(struct net_device *ndev)
{
 struct brcmf_if *ifp = netdev_priv(ndev);
 return ifp->vif;
}
