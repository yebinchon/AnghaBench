
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_cfg80211_vif_event {int vif_event_lock; int vif_wq; } ;


 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void init_vif_event(struct brcmf_cfg80211_vif_event *event)
{
 init_waitqueue_head(&event->vif_wq);
 spin_lock_init(&event->vif_event_lock);
}
