
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* rates; } ;
struct ieee80211_tx_info {TYPE_3__ status; int flags; } ;
struct TYPE_14__ {int last_tx; } ;
struct b43legacy_wldev {TYPE_9__* wl; TYPE_4__ stats; } ;
struct b43legacy_txstatus {scalar_t__ rts_count; int frame_count; scalar_t__ acked; int cookie; } ;
struct b43legacy_txhdr_fw3 {int dummy; } ;
struct b43legacy_dmaring {int current_slot; int used_slots; int nr_slots; int stopped; size_t queue_prio; int index; int tx; } ;
struct b43legacy_dmadesc_meta {scalar_t__ is_last_fragment; TYPE_7__* skb; int dmaaddr; } ;
struct TYPE_17__ {int tx_work; TYPE_5__* hw; scalar_t__* tx_queue_stopped; } ;
struct TYPE_16__ {int len; } ;
struct TYPE_11__ {scalar_t__ short_frame_max_tx_count; } ;
struct TYPE_15__ {TYPE_1__ conf; } ;
struct TYPE_12__ {int count; int idx; } ;


 int B43legacy_DBG_DMAVERBOSE ;
 int B43legacy_WARN_ON (int) ;
 int BUG_ON (int) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (TYPE_7__*) ;
 int IEEE80211_TX_STAT_ACK ;
 scalar_t__ SLOTS_PER_PACKET ;
 scalar_t__ b43legacy_debug (struct b43legacy_wldev*,int ) ;
 int b43legacydbg (TYPE_9__*,char*,int ,...) ;
 scalar_t__ free_slots (struct b43legacy_dmaring*) ;
 int ieee80211_queue_work (TYPE_5__*,int *) ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int ieee80211_tx_status_irqsafe (TYPE_5__*,TYPE_7__*) ;
 int ieee80211_wake_queue (TYPE_5__*,size_t) ;
 int jiffies ;
 int next_slot (struct b43legacy_dmaring*,int) ;
 int op32_idx2desc (struct b43legacy_dmaring*,int,struct b43legacy_dmadesc_meta**) ;
 struct b43legacy_dmaring* parse_cookie (struct b43legacy_wldev*,int ,int*) ;
 scalar_t__ unlikely (int) ;
 int unmap_descbuffer (struct b43legacy_dmaring*,int ,int,int) ;

void b43legacy_dma_handle_txstatus(struct b43legacy_wldev *dev,
     const struct b43legacy_txstatus *status)
{
 struct b43legacy_dmaring *ring;
 struct b43legacy_dmadesc_meta *meta;
 int retry_limit;
 int slot;
 int firstused;

 ring = parse_cookie(dev, status->cookie, &slot);
 if (unlikely(!ring))
  return;
 B43legacy_WARN_ON(!ring->tx);




 firstused = ring->current_slot - ring->used_slots + 1;
 if (firstused < 0)
  firstused = ring->nr_slots + firstused;
 if (unlikely(slot != firstused)) {



  b43legacydbg(dev->wl, "Out of order TX status report on DMA "
        "ring %d. Expected %d, but got %d\n",
        ring->index, firstused, slot);
  return;
 }

 while (1) {
  B43legacy_WARN_ON(!(slot >= 0 && slot < ring->nr_slots));
  op32_idx2desc(ring, slot, &meta);

  if (meta->skb)
   unmap_descbuffer(ring, meta->dmaaddr,
      meta->skb->len, 1);
  else
   unmap_descbuffer(ring, meta->dmaaddr,
      sizeof(struct b43legacy_txhdr_fw3),
      1);

  if (meta->is_last_fragment) {
   struct ieee80211_tx_info *info;
   BUG_ON(!meta->skb);
   info = IEEE80211_SKB_CB(meta->skb);




   retry_limit = info->status.rates[0].count;
   ieee80211_tx_info_clear_status(info);

   if (status->acked)
    info->flags |= IEEE80211_TX_STAT_ACK;

   if (status->rts_count > dev->wl->hw->conf.short_frame_max_tx_count) {







    info->status.rates[0].count = 0;
    info->status.rates[1].count = status->frame_count;
   } else {
    if (status->frame_count > retry_limit) {
     info->status.rates[0].count = retry_limit;
     info->status.rates[1].count = status->frame_count -
       retry_limit;

    } else {
     info->status.rates[0].count = status->frame_count;
     info->status.rates[1].idx = -1;
    }
   }





   ieee80211_tx_status_irqsafe(dev->wl->hw, meta->skb);

   meta->skb = ((void*)0);
  } else {



   B43legacy_WARN_ON(meta->skb != ((void*)0));
  }


  ring->used_slots--;

  if (meta->is_last_fragment)
   break;
  slot = next_slot(ring, slot);
 }
 dev->stats.last_tx = jiffies;
 if (ring->stopped) {
  B43legacy_WARN_ON(free_slots(ring) < SLOTS_PER_PACKET);
  ring->stopped = 0;
 }

 if (dev->wl->tx_queue_stopped[ring->queue_prio]) {
  dev->wl->tx_queue_stopped[ring->queue_prio] = 0;
 } else {


  ieee80211_wake_queue(dev->wl->hw, ring->queue_prio);
  if (b43legacy_debug(dev, B43legacy_DBG_DMAVERBOSE))
   b43legacydbg(dev->wl, "Woke up TX ring %d\n",
         ring->index);
 }

 ieee80211_queue_work(dev->wl->hw, &dev->wl->tx_work);
}
