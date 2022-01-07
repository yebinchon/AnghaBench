
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct brcmf_if {TYPE_1__* drvr; } ;
struct brcmf_cfg80211_info {int usr_sync; } ;
typedef int s32 ;
struct TYPE_2__ {struct brcmf_cfg80211_info* config; } ;


 int __brcmf_cfg80211_down (struct brcmf_if*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

s32 brcmf_cfg80211_down(struct net_device *ndev)
{
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
 s32 err = 0;

 mutex_lock(&cfg->usr_sync);
 err = __brcmf_cfg80211_down(ifp);
 mutex_unlock(&cfg->usr_sync);

 return err;
}
