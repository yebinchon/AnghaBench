
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct TYPE_12__ {TYPE_5__* rates; } ;
struct ieee80211_tx_info {TYPE_6__ control; } ;
struct TYPE_8__ {int timestamp; } ;
struct TYPE_9__ {TYPE_2__ beacon; } ;
struct ieee80211_mgmt {TYPE_3__ u; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_vif {int tsf_adjust; struct ath_buf* av_bcbuf; } ;
struct ath_txq {int axq_depth; int axq_lock; } ;
struct TYPE_7__ {struct ath_txq* cabq; } ;
struct ath_softc {TYPE_4__* cur_chan; int dev; TYPE_1__ beacon; int sc_ah; } ;
struct ath_common {int dummy; } ;
struct ath_buf {scalar_t__ bf_buf_addr; struct sk_buff* bf_mpdu; } ;
struct TYPE_11__ {int idx; } ;
struct TYPE_10__ {int nvifs; } ;


 int BEACON ;
 int DMA_TO_DEVICE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int ath9k_beacon_add_noa (struct ath_softc*,struct ath_vif*,struct sk_buff*) ;
 int ath9k_beacon_setup (struct ath_softc*,struct ieee80211_vif*,struct ath_buf*,int ) ;
 struct ath_common* ath9k_hw_common (int ) ;
 scalar_t__ ath9k_is_chanctx_enabled () ;
 int ath_assign_seq (struct ath_common*,struct sk_buff*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int ath_draintxq (struct ath_softc*,struct ath_txq*) ;
 int ath_err (struct ath_common*,char*) ;
 int ath_tx_cabq (struct ieee80211_hw*,struct ieee80211_vif*,struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ dma_map_single (int ,scalar_t__,int ,int ) ;
 int dma_mapping_error (int ,scalar_t__) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 struct sk_buff* ieee80211_beacon_get (struct ieee80211_hw*,struct ieee80211_vif*) ;
 struct sk_buff* ieee80211_get_buffered_bc (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct ath_buf *ath9k_beacon_generate(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif)
{
 struct ath_softc *sc = hw->priv;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_buf *bf;
 struct ath_vif *avp = (void *)vif->drv_priv;
 struct sk_buff *skb;
 struct ath_txq *cabq = sc->beacon.cabq;
 struct ieee80211_tx_info *info;
 struct ieee80211_mgmt *mgmt_hdr;
 int cabq_depth;

 if (avp->av_bcbuf == ((void*)0))
  return ((void*)0);

 bf = avp->av_bcbuf;
 skb = bf->bf_mpdu;
 if (skb) {
  dma_unmap_single(sc->dev, bf->bf_buf_addr,
     skb->len, DMA_TO_DEVICE);
  dev_kfree_skb_any(skb);
  bf->bf_buf_addr = 0;
  bf->bf_mpdu = ((void*)0);
 }

 skb = ieee80211_beacon_get(hw, vif);
 if (skb == ((void*)0))
  return ((void*)0);

 bf->bf_mpdu = skb;

 mgmt_hdr = (struct ieee80211_mgmt *)skb->data;
 mgmt_hdr->u.beacon.timestamp = avp->tsf_adjust;

 info = IEEE80211_SKB_CB(skb);

 ath_assign_seq(common, skb);


 if (ath9k_is_chanctx_enabled())
  ath9k_beacon_add_noa(sc, avp, skb);

 bf->bf_buf_addr = dma_map_single(sc->dev, skb->data,
      skb->len, DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(sc->dev, bf->bf_buf_addr))) {
  dev_kfree_skb_any(skb);
  bf->bf_mpdu = ((void*)0);
  bf->bf_buf_addr = 0;
  ath_err(common, "dma_mapping_error on beaconing\n");
  return ((void*)0);
 }

 skb = ieee80211_get_buffered_bc(hw, vif);
 spin_lock_bh(&cabq->axq_lock);
 cabq_depth = cabq->axq_depth;
 spin_unlock_bh(&cabq->axq_lock);

 if (skb && cabq_depth) {
  if (sc->cur_chan->nvifs > 1) {
   ath_dbg(common, BEACON,
    "Flushing previous cabq traffic\n");
   ath_draintxq(sc, cabq);
  }
 }

 ath9k_beacon_setup(sc, vif, bf, info->control.rates[0].idx);

 if (skb)
  ath_tx_cabq(hw, vif, skb);

 return bf;
}
