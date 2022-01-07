
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wmi_peer_assoc_complete_arg {int peer_flags; int peer_rate_caps; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta {int addr; int wme; int uapsd_queues; } ;
struct ath10k_vif {int vdev_type; TYPE_3__* ar; } ;
struct ath10k {int dummy; } ;
struct TYPE_5__ {TYPE_1__* peer_flags; } ;
struct TYPE_6__ {TYPE_2__ wmi; } ;
struct TYPE_4__ {int qos; int apsd; } ;


 int ATH10K_DBG_MAC ;
 int WMI_RC_UAPSD_FLAG ;



 int ath10k_dbg (struct ath10k*,int ,char*,int ,int) ;

__attribute__((used)) static void ath10k_peer_assoc_h_qos(struct ath10k *ar,
        struct ieee80211_vif *vif,
        struct ieee80211_sta *sta,
        struct wmi_peer_assoc_complete_arg *arg)
{
 struct ath10k_vif *arvif = (void *)vif->drv_priv;

 switch (arvif->vdev_type) {
 case 130:
  if (sta->wme)
   arg->peer_flags |= arvif->ar->wmi.peer_flags->qos;

  if (sta->wme && sta->uapsd_queues) {
   arg->peer_flags |= arvif->ar->wmi.peer_flags->apsd;
   arg->peer_rate_caps |= WMI_RC_UAPSD_FLAG;
  }
  break;
 case 128:
  if (sta->wme)
   arg->peer_flags |= arvif->ar->wmi.peer_flags->qos;
  break;
 case 129:
  if (sta->wme)
   arg->peer_flags |= arvif->ar->wmi.peer_flags->qos;
  break;
 default:
  break;
 }

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac peer %pM qos %d\n",
     sta->addr, !!(arg->peer_flags &
     arvif->ar->wmi.peer_flags->qos));
}
