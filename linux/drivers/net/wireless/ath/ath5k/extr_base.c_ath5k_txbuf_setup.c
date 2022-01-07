
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef void* u16 ;
struct sk_buff {unsigned int len; int data; } ;
struct TYPE_9__ {int vif; TYPE_1__* hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct ieee80211_tx_control {int * sta; } ;
struct ieee80211_rate {int dummy; } ;
struct ath5k_txq {int lock; int qnum; scalar_t__* link; int txq_len; int q; } ;
struct TYPE_11__ {scalar_t__ cap_has_mrr_support; } ;
struct TYPE_10__ {int txp_requested; } ;
struct ath5k_hw {int (* ah_setup_tx_desc ) (struct ath5k_hw*,struct ath5k_desc*,unsigned int,int ,int,int ,int,void*,unsigned int,unsigned int,int ,unsigned int,void*,void*) ;int dev; int hw; TYPE_4__ ah_capabilities; int ah_tx_ant; TYPE_3__ ah_txpower; } ;
struct ath5k_desc {scalar_t__ ds_link; int ds_data; } ;
struct ath5k_buf {int skbaddr; scalar_t__ daddr; int list; TYPE_5__* rates; struct sk_buff* skb; struct ath5k_desc* desc; } ;
typedef int mrr_tries ;
typedef int mrr_rate ;
struct TYPE_13__ {void* hw_value; } ;
struct TYPE_12__ {int flags; unsigned int count; } ;
struct TYPE_8__ {unsigned int hw_key_idx; scalar_t__ icv_len; } ;


 unsigned int AR5K_TXDESC_CLRDMASK ;
 unsigned int AR5K_TXDESC_CTSENA ;
 unsigned int AR5K_TXDESC_INTREQ ;
 unsigned int AR5K_TXDESC_NOACK ;
 unsigned int AR5K_TXDESC_RTSENA ;
 unsigned int AR5K_TXKEYIX_INVALID ;
 int ARRAY_SIZE (TYPE_5__*) ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ENOSPC ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_RC_USE_CTS_PROTECT ;
 int IEEE80211_TX_RC_USE_RTS_CTS ;
 struct ieee80211_rate* ath5k_get_rate (int ,struct ieee80211_tx_info*,struct ath5k_buf*,int) ;
 void* ath5k_get_rate_hw_value (int ,struct ieee80211_tx_info*,struct ath5k_buf*,int) ;
 int ath5k_hw_set_txdp (struct ath5k_hw*,int ,scalar_t__) ;
 int ath5k_hw_setup_mrr_tx_desc (struct ath5k_hw*,struct ath5k_desc*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int ath5k_hw_start_tx_dma (struct ath5k_hw*,int ) ;
 int dma_map_single (int ,int ,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,unsigned int,int ) ;
 int get_hw_packet_type (struct sk_buff*) ;
 int ieee80211_ctstoself_duration (int ,int ,unsigned int,struct ieee80211_tx_info*) ;
 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 TYPE_6__* ieee80211_get_rts_cts_rate (int ,struct ieee80211_tx_info*) ;
 int ieee80211_get_tx_rates (int ,int *,struct sk_buff*,TYPE_5__*,int ) ;
 int ieee80211_rts_duration (int ,int ,unsigned int,struct ieee80211_tx_info*) ;
 void* le16_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int memset (unsigned int*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ath5k_hw*,struct ath5k_desc*,unsigned int,int ,int,int ,int,void*,unsigned int,unsigned int,int ,unsigned int,void*,void*) ;

__attribute__((used)) static int
ath5k_txbuf_setup(struct ath5k_hw *ah, struct ath5k_buf *bf,
    struct ath5k_txq *txq, int padsize,
    struct ieee80211_tx_control *control)
{
 struct ath5k_desc *ds = bf->desc;
 struct sk_buff *skb = bf->skb;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 unsigned int pktlen, flags, keyidx = AR5K_TXKEYIX_INVALID;
 struct ieee80211_rate *rate;
 unsigned int mrr_rate[3], mrr_tries[3];
 int i, ret;
 u16 hw_rate;
 u16 cts_rate = 0;
 u16 duration = 0;
 u8 rc_flags;

 flags = AR5K_TXDESC_INTREQ | AR5K_TXDESC_CLRDMASK;


 bf->skbaddr = dma_map_single(ah->dev, skb->data, skb->len,
   DMA_TO_DEVICE);

 if (dma_mapping_error(ah->dev, bf->skbaddr))
  return -ENOSPC;

 ieee80211_get_tx_rates(info->control.vif, (control) ? control->sta : ((void*)0), skb, bf->rates,
          ARRAY_SIZE(bf->rates));

 rate = ath5k_get_rate(ah->hw, info, bf, 0);

 if (!rate) {
  ret = -EINVAL;
  goto err_unmap;
 }

 if (info->flags & IEEE80211_TX_CTL_NO_ACK)
  flags |= AR5K_TXDESC_NOACK;

 rc_flags = bf->rates[0].flags;

 hw_rate = ath5k_get_rate_hw_value(ah->hw, info, bf, 0);

 pktlen = skb->len;




 if (info->control.hw_key) {
  keyidx = info->control.hw_key->hw_key_idx;
  pktlen += info->control.hw_key->icv_len;
 }
 if (rc_flags & IEEE80211_TX_RC_USE_RTS_CTS) {
  flags |= AR5K_TXDESC_RTSENA;
  cts_rate = ieee80211_get_rts_cts_rate(ah->hw, info)->hw_value;
  duration = le16_to_cpu(ieee80211_rts_duration(ah->hw,
   info->control.vif, pktlen, info));
 }
 if (rc_flags & IEEE80211_TX_RC_USE_CTS_PROTECT) {
  flags |= AR5K_TXDESC_CTSENA;
  cts_rate = ieee80211_get_rts_cts_rate(ah->hw, info)->hw_value;
  duration = le16_to_cpu(ieee80211_ctstoself_duration(ah->hw,
   info->control.vif, pktlen, info));
 }

 ret = ah->ah_setup_tx_desc(ah, ds, pktlen,
  ieee80211_get_hdrlen_from_skb(skb), padsize,
  get_hw_packet_type(skb),
  (ah->ah_txpower.txp_requested * 2),
  hw_rate,
  bf->rates[0].count, keyidx, ah->ah_tx_ant, flags,
  cts_rate, duration);
 if (ret)
  goto err_unmap;


 if (ah->ah_capabilities.cap_has_mrr_support) {
  memset(mrr_rate, 0, sizeof(mrr_rate));
  memset(mrr_tries, 0, sizeof(mrr_tries));

  for (i = 0; i < 3; i++) {

   rate = ath5k_get_rate(ah->hw, info, bf, i);
   if (!rate)
    break;

   mrr_rate[i] = ath5k_get_rate_hw_value(ah->hw, info, bf, i);
   mrr_tries[i] = bf->rates[i].count;
  }

  ath5k_hw_setup_mrr_tx_desc(ah, ds,
   mrr_rate[0], mrr_tries[0],
   mrr_rate[1], mrr_tries[1],
   mrr_rate[2], mrr_tries[2]);
 }

 ds->ds_link = 0;
 ds->ds_data = bf->skbaddr;

 spin_lock_bh(&txq->lock);
 list_add_tail(&bf->list, &txq->q);
 txq->txq_len++;
 if (txq->link == ((void*)0))
  ath5k_hw_set_txdp(ah, txq->qnum, bf->daddr);
 else
  *txq->link = bf->daddr;

 txq->link = &ds->ds_link;
 ath5k_hw_start_tx_dma(ah, txq->qnum);
 spin_unlock_bh(&txq->lock);

 return 0;
err_unmap:
 dma_unmap_single(ah->dev, bf->skbaddr, skb->len, DMA_TO_DEVICE);
 return ret;
}
