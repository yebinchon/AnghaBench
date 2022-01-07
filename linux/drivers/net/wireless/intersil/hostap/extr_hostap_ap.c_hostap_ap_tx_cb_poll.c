
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta_info {int flags; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_hdr {int addr1; } ;
struct ap_data {TYPE_2__* local; int sta_table_lock; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int name; } ;


 int DEBUG_AP ;
 int PDEBUG (int ,char*,int ,int ) ;
 int WLAN_STA_PENDING_POLL ;
 struct sta_info* ap_get_sta (struct ap_data*,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void hostap_ap_tx_cb_poll(struct sk_buff *skb, int ok, void *data)
{
 struct ap_data *ap = data;
 struct ieee80211_hdr *hdr;
 struct sta_info *sta;

 if (skb->len < 24)
  goto fail;
 hdr = (struct ieee80211_hdr *) skb->data;
 if (ok) {
  spin_lock(&ap->sta_table_lock);
  sta = ap_get_sta(ap, hdr->addr1);
  if (sta)
   sta->flags &= ~WLAN_STA_PENDING_POLL;
  spin_unlock(&ap->sta_table_lock);
 } else {
  PDEBUG(DEBUG_AP,
         "%s: STA %pM did not ACK activity poll frame\n",
         ap->local->dev->name, hdr->addr1);
 }

 fail:
 dev_kfree_skb(skb);
}
