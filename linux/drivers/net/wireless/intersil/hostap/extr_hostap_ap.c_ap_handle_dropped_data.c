
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sta_info {int flags; int users; } ;
struct net_device {int dummy; } ;
struct ieee80211_hdr {int addr2; } ;
typedef int reason ;
struct TYPE_4__ {TYPE_3__* ap; struct net_device* dev; } ;
typedef TYPE_1__ local_info_t ;
typedef int __le16 ;
struct TYPE_5__ {int sta_table_lock; } ;


 int DEBUG_AP ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_STYPE_DEAUTH ;
 int IEEE80211_STYPE_DISASSOC ;
 int PDEBUG (int ,char*) ;
 int WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA ;
 int WLAN_STA_ASSOC ;
 struct sta_info* ap_get_sta (TYPE_3__*,int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int cpu_to_le16 (int ) ;
 int prism2_send_mgmt (struct net_device*,int,char*,int,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ap_handle_dropped_data(local_info_t *local,
       struct ieee80211_hdr *hdr)
{
 struct net_device *dev = local->dev;
 struct sta_info *sta;
 __le16 reason;

 spin_lock_bh(&local->ap->sta_table_lock);
 sta = ap_get_sta(local->ap, hdr->addr2);
 if (sta)
  atomic_inc(&sta->users);
 spin_unlock_bh(&local->ap->sta_table_lock);

 if (sta != ((void*)0) && (sta->flags & WLAN_STA_ASSOC)) {
  PDEBUG(DEBUG_AP, "ap_handle_dropped_data: STA is now okay?\n");
  atomic_dec(&sta->users);
  return;
 }

 reason = cpu_to_le16(WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA);
 prism2_send_mgmt(dev, IEEE80211_FTYPE_MGMT |
    ((sta == ((void*)0) || !(sta->flags & WLAN_STA_ASSOC)) ?
     IEEE80211_STYPE_DEAUTH : IEEE80211_STYPE_DISASSOC),
    (char *) &reason, sizeof(reason), hdr->addr2, 0);

 if (sta)
  atomic_dec(&sta->users);
}
