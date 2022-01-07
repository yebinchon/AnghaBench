
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct brcmf_if_event {int action; int bsscfgidx; int ifidx; int flags; } ;
struct brcmf_if {TYPE_3__* ndev; struct brcmf_cfg80211_vif* vif; TYPE_1__* drvr; } ;
struct brcmf_event_msg {int dummy; } ;
struct brcmf_cfg80211_vif_event {int action; int vif_event_lock; int vif_wq; struct brcmf_cfg80211_vif* vif; } ;
struct TYPE_5__ {TYPE_3__* netdev; } ;
struct brcmf_cfg80211_vif {TYPE_2__ wdev; struct brcmf_if* ifp; } ;
struct brcmf_cfg80211_info {int wiphy; struct brcmf_cfg80211_vif_event vif_event; } ;
typedef int s32 ;
struct TYPE_6__ {TYPE_2__* ieee80211_ptr; } ;
struct TYPE_4__ {struct brcmf_cfg80211_info* config; } ;





 int EBADF ;
 int EINVAL ;
 int SET_NETDEV_DEV (TYPE_3__*,int ) ;
 int TRACE ;
 int brcmf_cfg80211_vif_event_armed (struct brcmf_cfg80211_info*) ;
 int brcmf_dbg (int ,char*,int,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;
 int wiphy_dev (int ) ;

__attribute__((used)) static s32 brcmf_notify_vif_event(struct brcmf_if *ifp,
      const struct brcmf_event_msg *e, void *data)
{
 struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
 struct brcmf_if_event *ifevent = (struct brcmf_if_event *)data;
 struct brcmf_cfg80211_vif_event *event = &cfg->vif_event;
 struct brcmf_cfg80211_vif *vif;

 brcmf_dbg(TRACE, "Enter: action %u flags %u ifidx %u bsscfgidx %u\n",
    ifevent->action, ifevent->flags, ifevent->ifidx,
    ifevent->bsscfgidx);

 spin_lock(&event->vif_event_lock);
 event->action = ifevent->action;
 vif = event->vif;

 switch (ifevent->action) {
 case 130:

  if (!cfg->vif_event.vif) {
   spin_unlock(&event->vif_event_lock);
   return -EBADF;
  }

  ifp->vif = vif;
  vif->ifp = ifp;
  if (ifp->ndev) {
   vif->wdev.netdev = ifp->ndev;
   ifp->ndev->ieee80211_ptr = &vif->wdev;
   SET_NETDEV_DEV(ifp->ndev, wiphy_dev(cfg->wiphy));
  }
  spin_unlock(&event->vif_event_lock);
  wake_up(&event->vif_wq);
  return 0;

 case 128:
  spin_unlock(&event->vif_event_lock);

  if (brcmf_cfg80211_vif_event_armed(cfg))
   wake_up(&event->vif_wq);
  return 0;

 case 129:
  spin_unlock(&event->vif_event_lock);
  wake_up(&event->vif_wq);
  return 0;

 default:
  spin_unlock(&event->vif_event_lock);
  break;
 }
 return -EINVAL;
}
