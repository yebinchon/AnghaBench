
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct il_rx_buf {int * page; } ;
struct TYPE_6__ {int rx_page_order; } ;
struct il_priv {int hw; int alloc_rxb_page; TYPE_3__ hw_params; TYPE_2__* cfg; int stop_reason; int is_open; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le16 ;
struct TYPE_5__ {TYPE_1__* mod_params; } ;
struct TYPE_4__ {int sw_crypto; } ;


 int D_DROP (char*) ;
 int D_INFO (char*) ;
 int IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int IL_ERR (char*) ;
 int IL_STOP_REASON_PASSIVE ;
 int PAGE_SIZE ;
 int SMALL_PACKET_SIZE ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int ieee80211_rx (int ,struct sk_buff*) ;
 scalar_t__ il_set_decrypted_flag (struct il_priv*,struct ieee80211_hdr*,int ,struct ieee80211_rx_status*) ;
 int il_update_stats (struct il_priv*,int,int ,int ) ;
 int il_wake_queues_by_reason (struct il_priv*,int ) ;
 int memcpy (int ,struct ieee80211_rx_status*,int) ;
 int rxb_addr (struct il_rx_buf*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int *,void*,int ,int) ;
 int skb_put_data (struct sk_buff*,struct ieee80211_hdr*,int ) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
il4965_pass_packet_to_mac80211(struct il_priv *il, struct ieee80211_hdr *hdr,
          u32 len, u32 ampdu_status, struct il_rx_buf *rxb,
          struct ieee80211_rx_status *stats)
{
 struct sk_buff *skb;
 __le16 fc = hdr->frame_control;


 if (unlikely(!il->is_open)) {
  D_DROP("Dropping packet while interface is not open.\n");
  return;
 }

 if (unlikely(test_bit(IL_STOP_REASON_PASSIVE, &il->stop_reason))) {
  il_wake_queues_by_reason(il, IL_STOP_REASON_PASSIVE);
  D_INFO("Woke queues - frame received on passive channel\n");
 }


 if (!il->cfg->mod_params->sw_crypto &&
     il_set_decrypted_flag(il, hdr, ampdu_status, stats))
  return;

 skb = dev_alloc_skb(SMALL_PACKET_SIZE);
 if (!skb) {
  IL_ERR("dev_alloc_skb failed\n");
  return;
 }

 if (len <= SMALL_PACKET_SIZE) {
  skb_put_data(skb, hdr, len);
 } else {
  skb_add_rx_frag(skb, 0, rxb->page, (void *)hdr - rxb_addr(rxb),
    len, PAGE_SIZE << il->hw_params.rx_page_order);
  il->alloc_rxb_page--;
  rxb->page = ((void*)0);
 }

 il_update_stats(il, 0, fc, len);
 memcpy(IEEE80211_SKB_RXCB(skb), stats, sizeof(*stats));

 ieee80211_rx(il->hw, skb);
}
