
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct TYPE_4__ {TYPE_1__* netdev; } ;
struct brcmf_cfg80211_vif {TYPE_2__ wdev; } ;
struct brcmf_cfg80211_info {int dummy; } ;
struct TYPE_3__ {int * dev_addr; } ;


 int ETH_ALEN ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,int *,int ) ;
 struct net_device* cfg_to_ndev (struct brcmf_cfg80211_info*) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 struct brcmf_cfg80211_info* wdev_to_cfg (TYPE_2__*) ;

__attribute__((used)) static int brcmf_p2p_disable_p2p_if(struct brcmf_cfg80211_vif *vif)
{
 struct brcmf_cfg80211_info *cfg = wdev_to_cfg(&vif->wdev);
 struct net_device *pri_ndev = cfg_to_ndev(cfg);
 struct brcmf_if *ifp = netdev_priv(pri_ndev);
 u8 *addr = vif->wdev.netdev->dev_addr;

 return brcmf_fil_iovar_data_set(ifp, "p2p_ifdis", addr, ETH_ALEN);
}
