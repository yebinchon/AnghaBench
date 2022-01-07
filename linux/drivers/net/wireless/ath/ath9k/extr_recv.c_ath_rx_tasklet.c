
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_rx_status {int rs_datalen; int flag; int rs_tstamp; int is_mybeacon; scalar_t__ rs_more; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_4__ {int rxbuf; struct sk_buff* frag; } ;
struct ath_softc {int ps_flags; TYPE_2__ rx; struct ath_hw* sc_ah; int sc_pm_lock; int dev; struct ieee80211_hw* hw; } ;
struct ath_rxbuf {int list; int bf_buf_addr; struct sk_buff* bf_mpdu; } ;
struct ath_rx_status {int rs_datalen; int flag; int rs_tstamp; int is_mybeacon; scalar_t__ rs_more; } ;
struct TYPE_3__ {int hw_caps; int rx_status_len; } ;
struct ath_hw {int imask; TYPE_1__ caps; } ;
struct ath_common {int rx_bufsize; } ;
typedef int rs ;
typedef enum ath9k_rx_qtype { ____Placeholder_ath9k_rx_qtype } ath9k_rx_qtype ;
typedef int dma_addr_t ;


 int ATH9K_HW_CAP_EDMA ;
 int ATH9K_INT_RXEOL ;
 int ATH9K_INT_RXORN ;
 int ATH9K_RX_QUEUE_HP ;
 int ATH9K_RX_QUEUE_LP ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int GFP_ATOMIC ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int PS_WAIT_FOR_BEACON ;
 int PS_WAIT_FOR_CAB ;
 int PS_WAIT_FOR_PSPOLL_DATA ;
 int RX_FLAG_MMIC_STRIPPED ;
 int RX_STAT_INC (struct ath_softc*,int ) ;
 int ath9k_antenna_check (struct ath_softc*,struct ieee80211_rx_status*) ;
 int ath9k_apply_ampdu_details (struct ath_softc*,struct ieee80211_rx_status*,struct ieee80211_rx_status*) ;
 scalar_t__ ath9k_check_auto_sleep (struct ath_softc*) ;
 int ath9k_cmn_rx_skb_postprocess (struct ath_common*,struct sk_buff*,struct ieee80211_rx_status*,struct ieee80211_rx_status*,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_gettsf64 (struct ath_hw*) ;
 int ath9k_hw_rxena (struct ath_hw*) ;
 int ath9k_hw_set_interrupts (struct ath_hw*) ;
 int ath9k_rx_skb_preprocess (struct ath_softc*,struct sk_buff*,struct ieee80211_rx_status*,struct ieee80211_rx_status*,int*,int ) ;
 int ath_debug_rate_stats (struct ath_softc*,struct ieee80211_rx_status*,struct sk_buff*) ;
 int ath_dynack_sample_ack_ts (struct ath_hw*,struct sk_buff*,int ) ;
 struct ath_rxbuf* ath_edma_get_next_rx_buf (struct ath_softc*,struct ieee80211_rx_status*,int) ;
 struct ath_rxbuf* ath_get_next_rx_buf (struct ath_softc*,struct ieee80211_rx_status*) ;
 int ath_rx_buf_relink (struct ath_softc*,struct ath_rxbuf*,int) ;
 int ath_rx_count_airtime (struct ath_softc*,struct ieee80211_rx_status*,struct sk_buff*) ;
 int ath_rx_edma_buf_link (struct ath_softc*,int) ;
 int ath_rx_ps (struct ath_softc*,struct sk_buff*,int ) ;
 struct sk_buff* ath_rxbuf_alloc (struct ath_common*,int ,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (int ,scalar_t__,int ,int) ;
 int dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int) ;
 scalar_t__ ieee80211_is_ack (int ) ;
 int ieee80211_rx (struct ieee80211_hw*,struct sk_buff*) ;
 int list_add_tail (int *,int *) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int,int ) ;
 int rx_frags ;
 int rx_oom_err ;
 int rx_too_many_frags_err ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

int ath_rx_tasklet(struct ath_softc *sc, int flush, bool hp)
{
 struct ath_rxbuf *bf;
 struct sk_buff *skb = ((void*)0), *requeue_skb, *hdr_skb;
 struct ieee80211_rx_status *rxs;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ieee80211_hw *hw = sc->hw;
 int retval;
 struct ath_rx_status rs;
 enum ath9k_rx_qtype qtype;
 bool edma = !!(ah->caps.hw_caps & ATH9K_HW_CAP_EDMA);
 int dma_type;
 u64 tsf = 0;
 unsigned long flags;
 dma_addr_t new_buf_addr;
 unsigned int budget = 512;
 struct ieee80211_hdr *hdr;

 if (edma)
  dma_type = DMA_BIDIRECTIONAL;
 else
  dma_type = DMA_FROM_DEVICE;

 qtype = hp ? ATH9K_RX_QUEUE_HP : ATH9K_RX_QUEUE_LP;

 tsf = ath9k_hw_gettsf64(ah);

 do {
  bool decrypt_error = 0;

  memset(&rs, 0, sizeof(rs));
  if (edma)
   bf = ath_edma_get_next_rx_buf(sc, &rs, qtype);
  else
   bf = ath_get_next_rx_buf(sc, &rs);

  if (!bf)
   break;

  skb = bf->bf_mpdu;
  if (!skb)
   continue;





  if (sc->rx.frag)
   hdr_skb = sc->rx.frag;
  else
   hdr_skb = skb;

  rxs = IEEE80211_SKB_RXCB(hdr_skb);
  memset(rxs, 0, sizeof(struct ieee80211_rx_status));

  retval = ath9k_rx_skb_preprocess(sc, hdr_skb, &rs, rxs,
       &decrypt_error, tsf);
  if (retval)
   goto requeue_drop_frag;



  requeue_skb = ath_rxbuf_alloc(common, common->rx_bufsize, GFP_ATOMIC);





  if (!requeue_skb) {
   RX_STAT_INC(sc, rx_oom_err);
   goto requeue_drop_frag;
  }


  new_buf_addr = dma_map_single(sc->dev, requeue_skb->data,
           common->rx_bufsize, dma_type);
  if (unlikely(dma_mapping_error(sc->dev, new_buf_addr))) {
   dev_kfree_skb_any(requeue_skb);
   goto requeue_drop_frag;
  }


  dma_unmap_single(sc->dev, bf->bf_buf_addr,
     common->rx_bufsize, dma_type);

  bf->bf_mpdu = requeue_skb;
  bf->bf_buf_addr = new_buf_addr;

  skb_put(skb, rs.rs_datalen + ah->caps.rx_status_len);
  if (ah->caps.rx_status_len)
   skb_pull(skb, ah->caps.rx_status_len);

  if (!rs.rs_more)
   ath9k_cmn_rx_skb_postprocess(common, hdr_skb, &rs,
           rxs, decrypt_error);

  if (rs.rs_more) {
   RX_STAT_INC(sc, rx_frags);





   if (sc->rx.frag) {

    dev_kfree_skb_any(sc->rx.frag);
    dev_kfree_skb_any(skb);
    RX_STAT_INC(sc, rx_too_many_frags_err);
    skb = ((void*)0);
   }
   sc->rx.frag = skb;
   goto requeue;
  }

  if (sc->rx.frag) {
   int space = skb->len - skb_tailroom(hdr_skb);

   if (pskb_expand_head(hdr_skb, 0, space, GFP_ATOMIC) < 0) {
    dev_kfree_skb(skb);
    RX_STAT_INC(sc, rx_oom_err);
    goto requeue_drop_frag;
   }

   sc->rx.frag = ((void*)0);

   skb_copy_from_linear_data(skb, skb_put(hdr_skb, skb->len),
        skb->len);
   dev_kfree_skb_any(skb);
   skb = hdr_skb;
  }

  if (rxs->flag & RX_FLAG_MMIC_STRIPPED)
   skb_trim(skb, skb->len - 8);

  spin_lock_irqsave(&sc->sc_pm_lock, flags);
  if ((sc->ps_flags & (PS_WAIT_FOR_BEACON |
         PS_WAIT_FOR_CAB |
         PS_WAIT_FOR_PSPOLL_DATA)) ||
      ath9k_check_auto_sleep(sc))
   ath_rx_ps(sc, skb, rs.is_mybeacon);
  spin_unlock_irqrestore(&sc->sc_pm_lock, flags);

  ath9k_antenna_check(sc, &rs);
  ath9k_apply_ampdu_details(sc, &rs, rxs);
  ath_debug_rate_stats(sc, &rs, skb);
  ath_rx_count_airtime(sc, &rs, skb);

  hdr = (struct ieee80211_hdr *)skb->data;
  if (ieee80211_is_ack(hdr->frame_control))
   ath_dynack_sample_ack_ts(sc->sc_ah, skb, rs.rs_tstamp);

  ieee80211_rx(hw, skb);

requeue_drop_frag:
  if (sc->rx.frag) {
   dev_kfree_skb_any(sc->rx.frag);
   sc->rx.frag = ((void*)0);
  }
requeue:
  list_add_tail(&bf->list, &sc->rx.rxbuf);

  if (!edma) {
   ath_rx_buf_relink(sc, bf, flush);
   if (!flush)
    ath9k_hw_rxena(ah);
  } else if (!flush) {
   ath_rx_edma_buf_link(sc, qtype);
  }

  if (!budget--)
   break;
 } while (1);

 if (!(ah->imask & ATH9K_INT_RXEOL)) {
  ah->imask |= (ATH9K_INT_RXEOL | ATH9K_INT_RXORN);
  ath9k_hw_set_interrupts(ah);
 }

 return 0;
}
