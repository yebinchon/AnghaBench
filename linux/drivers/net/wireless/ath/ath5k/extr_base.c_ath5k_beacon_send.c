
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath5k_vif {struct ath5k_buf* bbuf; } ;
struct ath5k_hw {size_t bhalq; int bmisscount; scalar_t__ opmode; int num_ap_vifs; int num_mesh_vifs; int bintval; int bsent; int hw; TYPE_1__* cabq; int * txqs; struct ieee80211_vif** bslot; int reset_work; } ;
struct ath5k_buf {int desc; scalar_t__ daddr; int * skb; } ;
struct TYPE_2__ {scalar_t__ txq_len; scalar_t__ txq_max; } ;


 int ATH5K_DBG (struct ath5k_hw*,int ,char*,...) ;
 int ATH5K_DBG_UNLIMIT (struct ath5k_hw*,int ,char*) ;
 int ATH5K_DEBUG_BEACON ;
 int ATH5K_DEBUG_RESET ;
 int ATH5K_WARN (struct ath5k_hw*,char*,...) ;
 int ATH_BCBUF ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int TSF_TO_TU (scalar_t__) ;
 int ath5k_beacon_update (int ,struct ieee80211_vif*) ;
 scalar_t__ ath5k_hw_get_tsf64 (struct ath5k_hw*) ;
 scalar_t__ ath5k_hw_num_tx_pending (struct ath5k_hw*,size_t) ;
 int ath5k_hw_set_txdp (struct ath5k_hw*,size_t,scalar_t__) ;
 int ath5k_hw_start_tx_dma (struct ath5k_hw*,size_t) ;
 int ath5k_hw_stop_beacon_queue (struct ath5k_hw*,size_t) ;
 int ath5k_tx_queue (int ,struct sk_buff*,TYPE_1__*,int *) ;
 struct sk_buff* ieee80211_get_buffered_bc (int ,struct ieee80211_vif*) ;
 int ieee80211_queue_work (int ,int *) ;
 int trace_ath5k_tx (struct ath5k_hw*,int *,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
ath5k_beacon_send(struct ath5k_hw *ah)
{
 struct ieee80211_vif *vif;
 struct ath5k_vif *avf;
 struct ath5k_buf *bf;
 struct sk_buff *skb;
 int err;

 ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_BEACON, "in beacon_send\n");
 if (unlikely(ath5k_hw_num_tx_pending(ah, ah->bhalq) != 0)) {
  ah->bmisscount++;
  ATH5K_DBG(ah, ATH5K_DEBUG_BEACON,
   "missed %u consecutive beacons\n", ah->bmisscount);
  if (ah->bmisscount > 10) {
   ATH5K_DBG(ah, ATH5K_DEBUG_BEACON,
    "stuck beacon time (%u missed)\n",
    ah->bmisscount);
   ATH5K_DBG(ah, ATH5K_DEBUG_RESET,
      "stuck beacon, resetting\n");
   ieee80211_queue_work(ah->hw, &ah->reset_work);
  }
  return;
 }
 if (unlikely(ah->bmisscount != 0)) {
  ATH5K_DBG(ah, ATH5K_DEBUG_BEACON,
   "resume beacon xmit after %u misses\n",
   ah->bmisscount);
  ah->bmisscount = 0;
 }

 if ((ah->opmode == NL80211_IFTYPE_AP && ah->num_ap_vifs +
   ah->num_mesh_vifs > 1) ||
   ah->opmode == NL80211_IFTYPE_MESH_POINT) {
  u64 tsf = ath5k_hw_get_tsf64(ah);
  u32 tsftu = TSF_TO_TU(tsf);
  int slot = ((tsftu % ah->bintval) * ATH_BCBUF) / ah->bintval;
  vif = ah->bslot[(slot + 1) % ATH_BCBUF];
  ATH5K_DBG(ah, ATH5K_DEBUG_BEACON,
   "tsf %llx tsftu %x intval %u slot %u vif %p\n",
   (unsigned long long)tsf, tsftu, ah->bintval, slot, vif);
 } else
  vif = ah->bslot[0];

 if (!vif)
  return;

 avf = (void *)vif->drv_priv;
 bf = avf->bbuf;






 if (unlikely(ath5k_hw_stop_beacon_queue(ah, ah->bhalq))) {
  ATH5K_WARN(ah, "beacon queue %u didn't start/stop ?\n", ah->bhalq);

 }


 if (ah->opmode == NL80211_IFTYPE_AP ||
     ah->opmode == NL80211_IFTYPE_MESH_POINT) {
  err = ath5k_beacon_update(ah->hw, vif);
  if (err)
   return;
 }

 if (unlikely(bf->skb == ((void*)0) || ah->opmode == NL80211_IFTYPE_STATION ||
       ah->opmode == NL80211_IFTYPE_MONITOR)) {
  ATH5K_WARN(ah, "bf=%p bf_skb=%p\n", bf, bf->skb);
  return;
 }

 trace_ath5k_tx(ah, bf->skb, &ah->txqs[ah->bhalq]);

 ath5k_hw_set_txdp(ah, ah->bhalq, bf->daddr);
 ath5k_hw_start_tx_dma(ah, ah->bhalq);
 ATH5K_DBG(ah, ATH5K_DEBUG_BEACON, "TXDP[%u] = %llx (%p)\n",
  ah->bhalq, (unsigned long long)bf->daddr, bf->desc);

 skb = ieee80211_get_buffered_bc(ah->hw, vif);
 while (skb) {
  ath5k_tx_queue(ah->hw, skb, ah->cabq, ((void*)0));

  if (ah->cabq->txq_len >= ah->cabq->txq_max)
   break;

  skb = ieee80211_get_buffered_bc(ah->hw, vif);
 }

 ah->bsent++;
}
