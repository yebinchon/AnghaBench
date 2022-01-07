
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_if {int vif; } ;
typedef int s32 ;


 int TRACE ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_link_down (int ,int ) ;
 int brcmf_net_setcarrier (struct brcmf_if*,int) ;
 int check_vif_up (int ) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static s32
brcmf_cfg80211_leave_ibss(struct wiphy *wiphy, struct net_device *ndev)
{
 struct brcmf_if *ifp = netdev_priv(ndev);

 brcmf_dbg(TRACE, "Enter\n");
 if (!check_vif_up(ifp->vif)) {




  return 0;
 }

 brcmf_link_down(ifp->vif, WLAN_REASON_DEAUTH_LEAVING);
 brcmf_net_setcarrier(ifp, 0);

 brcmf_dbg(TRACE, "Exit\n");

 return 0;
}
