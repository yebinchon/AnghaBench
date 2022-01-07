
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct brcmf_if {struct brcmf_cfg80211_vif* vif; } ;
struct brcmf_cfg80211_vif {int dummy; } ;


 int brcmf_free_vif (struct brcmf_cfg80211_vif*) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

void brcmf_cfg80211_free_netdev(struct net_device *ndev)
{
 struct brcmf_cfg80211_vif *vif;
 struct brcmf_if *ifp;

 ifp = netdev_priv(ndev);
 vif = ifp->vif;

 if (vif)
  brcmf_free_vif(vif);
}
