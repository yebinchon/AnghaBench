
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct brcmf_cfg80211_vif_event {scalar_t__ action; int vif_event_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline bool vif_event_equals(struct brcmf_cfg80211_vif_event *event,
        u8 action)
{
 u8 evt_action;

 spin_lock(&event->vif_event_lock);
 evt_action = event->action;
 spin_unlock(&event->vif_event_lock);
 return evt_action == action;
}
