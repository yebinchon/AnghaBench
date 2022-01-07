
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcmf_if {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;
struct brcmf_cfg80211_vif {TYPE_1__ wdev; } ;
struct brcmf_cfg80211_info {int pub; struct brcmf_btcoex_info* btcoex; } ;
struct brcmf_btcoex_info {struct brcmf_cfg80211_vif* vif; int bt_state; int timeout; } ;
typedef enum brcmf_btcoex_mode { ____Placeholder_brcmf_btcoex_mode } brcmf_btcoex_mode ;




 int BRCMF_BT_DHCP_IDLE ;
 int EBUSY ;
 int INFO ;
 int brcmf_btcoex_dhcp_end (struct brcmf_btcoex_info*) ;
 int brcmf_btcoex_dhcp_start (struct brcmf_btcoex_info*) ;
 int brcmf_btcoex_is_sco_active (struct brcmf_if*) ;
 int brcmf_dbg (int ,char*) ;
 struct brcmf_if* brcmf_get_ifp (int ,int ) ;
 int msecs_to_jiffies (int ) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (int ) ;

int brcmf_btcoex_set_mode(struct brcmf_cfg80211_vif *vif,
     enum brcmf_btcoex_mode mode, u16 duration)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(vif->wdev.wiphy);
 struct brcmf_btcoex_info *btci = cfg->btcoex;
 struct brcmf_if *ifp = brcmf_get_ifp(cfg->pub, 0);

 switch (mode) {
 case 129:
  brcmf_dbg(INFO, "DHCP session starts\n");
  if (btci->bt_state != BRCMF_BT_DHCP_IDLE)
   return -EBUSY;

  if (brcmf_btcoex_is_sco_active(ifp)) {
   btci->timeout = msecs_to_jiffies(duration);
   btci->vif = vif;
   brcmf_btcoex_dhcp_start(btci);
  }
  break;

 case 128:
  brcmf_dbg(INFO, "DHCP session ends\n");
  if (btci->bt_state != BRCMF_BT_DHCP_IDLE &&
      vif == btci->vif) {
   brcmf_btcoex_dhcp_end(btci);
  }
  break;
 default:
  brcmf_dbg(INFO, "Unknown mode, ignored\n");
 }
 return 0;
}
