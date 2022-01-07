
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_cfg80211_vif_event {int vif_event_lock; int * vif; } ;
struct brcmf_cfg80211_info {struct brcmf_cfg80211_vif_event vif_event; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool brcmf_cfg80211_vif_event_armed(struct brcmf_cfg80211_info *cfg)
{
 struct brcmf_cfg80211_vif_event *event = &cfg->vif_event;
 bool armed;

 spin_lock(&event->vif_event_lock);
 armed = event->vif != ((void*)0);
 spin_unlock(&event->vif_event_lock);

 return armed;
}
