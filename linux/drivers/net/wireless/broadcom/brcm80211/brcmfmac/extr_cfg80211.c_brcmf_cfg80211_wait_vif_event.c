
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u8 ;
struct brcmf_cfg80211_vif_event {int vif_wq; } ;
struct brcmf_cfg80211_info {struct brcmf_cfg80211_vif_event vif_event; } ;


 int vif_event_equals (struct brcmf_cfg80211_vif_event*,int ) ;
 int wait_event_timeout (int ,int ,int ) ;

int brcmf_cfg80211_wait_vif_event(struct brcmf_cfg80211_info *cfg,
      u8 action, ulong timeout)
{
 struct brcmf_cfg80211_vif_event *event = &cfg->vif_event;

 return wait_event_timeout(event->vif_wq,
      vif_event_equals(event, action), timeout);
}
