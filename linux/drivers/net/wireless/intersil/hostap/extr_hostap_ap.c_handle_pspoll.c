
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct sta_info {int aid; int flags; int users; int tx_buf; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dev_addr; } ;
struct ieee80211_hdr {int addr1; int addr2; int duration_id; int frame_control; } ;
struct hostap_80211_rx_status {int dummy; } ;
struct TYPE_6__ {TYPE_5__* ap; struct net_device* dev; } ;
typedef TYPE_1__ local_info_t ;
struct TYPE_7__ {int sta_table_lock; } ;


 int BIT (int) ;
 int DEBUG_AP ;
 int DEBUG_PS ;
 int DEBUG_PS2 ;
 int MAX_AID_TABLE_SIZE ;
 int PDEBUG (int ,char*,...) ;
 int WLAN_STA_PS ;
 int WLAN_STA_TIM ;
 struct sta_info* ap_get_sta (TYPE_5__*,int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int ether_addr_equal (int,int ) ;
 int hostap_set_tim (TYPE_1__*,int,int ) ;
 int ieee80211_has_pm (int ) ;
 int le16_to_cpu (int ) ;
 int pspoll_send_buffered (TYPE_1__*,struct sta_info*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_queue_empty (int *) ;
 int skb_queue_len (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void handle_pspoll(local_info_t *local,
     struct ieee80211_hdr *hdr,
     struct hostap_80211_rx_status *rx_stats)
{
 struct net_device *dev = local->dev;
 struct sta_info *sta;
 u16 aid;
 struct sk_buff *skb;

 PDEBUG(DEBUG_PS2, "handle_pspoll: BSSID=%pM, TA=%pM PWRMGT=%d\n",
        hdr->addr1, hdr->addr2, !!ieee80211_has_pm(hdr->frame_control));

 if (!ether_addr_equal(hdr->addr1, dev->dev_addr)) {
  PDEBUG(DEBUG_AP,
         "handle_pspoll - addr1(BSSID)=%pM not own MAC\n",
         hdr->addr1);
  return;
 }

 aid = le16_to_cpu(hdr->duration_id);
 if ((aid & (BIT(15) | BIT(14))) != (BIT(15) | BIT(14))) {
  PDEBUG(DEBUG_PS, "   PSPOLL and AID[15:14] not set\n");
  return;
 }
 aid &= ~(BIT(15) | BIT(14));
 if (aid == 0 || aid > MAX_AID_TABLE_SIZE) {
  PDEBUG(DEBUG_PS, "   invalid aid=%d\n", aid);
  return;
 }
 PDEBUG(DEBUG_PS2, "   aid=%d\n", aid);

 spin_lock_bh(&local->ap->sta_table_lock);
 sta = ap_get_sta(local->ap, hdr->addr2);
 if (sta)
  atomic_inc(&sta->users);
 spin_unlock_bh(&local->ap->sta_table_lock);

 if (sta == ((void*)0)) {
  PDEBUG(DEBUG_PS, "   STA not found\n");
  return;
 }
 if (sta->aid != aid) {
  PDEBUG(DEBUG_PS, "   received aid=%i does not match with "
         "assoc.aid=%d\n", aid, sta->aid);
  return;
 }
 while ((skb = skb_dequeue(&sta->tx_buf)) != ((void*)0)) {

  PDEBUG(DEBUG_PS2, "Sending buffered frame to STA after PS POLL"
         " (buffer_count=%d)\n", skb_queue_len(&sta->tx_buf));

  pspoll_send_buffered(local, sta, skb);

  if (sta->flags & WLAN_STA_PS) {




   break;
  }
 }

 if (skb_queue_empty(&sta->tx_buf)) {

  if (!(sta->flags & WLAN_STA_TIM))
   PDEBUG(DEBUG_PS2, "Re-unsetting TIM for aid %d\n",
          aid);
  hostap_set_tim(local, aid, 0);
  sta->flags &= ~WLAN_STA_TIM;
 }

 atomic_dec(&sta->users);
}
