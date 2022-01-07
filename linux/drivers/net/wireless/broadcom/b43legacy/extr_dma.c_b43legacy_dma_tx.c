
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct b43legacy_wldev {TYPE_1__* wl; } ;
struct b43legacy_dmaring {int stopped; int index; int tx; } ;
struct TYPE_3__ {int* tx_queue_stopped; int hw; } ;


 int B43legacy_DBG_DMAVERBOSE ;
 int B43legacy_WARN_ON (int) ;
 int ENOKEY ;
 int ENOSPC ;
 scalar_t__ SLOTS_PER_PACKET ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ b43legacy_debug (struct b43legacy_wldev*,int ) ;
 int b43legacydbg (TYPE_1__*,char*,int ) ;
 int b43legacyerr (TYPE_1__*,char*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_tx_fragment (struct b43legacy_dmaring*,struct sk_buff**) ;
 scalar_t__ free_slots (struct b43legacy_dmaring*) ;
 int ieee80211_stop_queue (int ,unsigned int) ;
 struct b43legacy_dmaring* priority_to_txring (struct b43legacy_wldev*,unsigned int) ;
 scalar_t__ should_inject_overflow (struct b43legacy_dmaring*) ;
 unsigned int skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int b43legacy_dma_tx(struct b43legacy_wldev *dev,
       struct sk_buff *skb)
{
 struct b43legacy_dmaring *ring;
 int err = 0;

 ring = priority_to_txring(dev, skb_get_queue_mapping(skb));
 B43legacy_WARN_ON(!ring->tx);

 if (unlikely(ring->stopped)) {




  if (b43legacy_debug(dev, B43legacy_DBG_DMAVERBOSE))
   b43legacyerr(dev->wl, "Packet after queue stopped\n");
  return -ENOSPC;
 }

 if (WARN_ON(free_slots(ring) < SLOTS_PER_PACKET)) {


  b43legacyerr(dev->wl, "DMA queue overflow\n");
  return -ENOSPC;
 }



 err = dma_tx_fragment(ring, &skb);
 if (unlikely(err == -ENOKEY)) {


  dev_kfree_skb_any(skb);
  return 0;
 }
 if (unlikely(err)) {
  b43legacyerr(dev->wl, "DMA tx mapping failure\n");
  return err;
 }
 if ((free_slots(ring) < SLOTS_PER_PACKET) ||
     should_inject_overflow(ring)) {

  unsigned int skb_mapping = skb_get_queue_mapping(skb);
  ieee80211_stop_queue(dev->wl->hw, skb_mapping);
  dev->wl->tx_queue_stopped[skb_mapping] = 1;
  ring->stopped = 1;
  if (b43legacy_debug(dev, B43legacy_DBG_DMAVERBOSE))
   b43legacydbg(dev->wl, "Stopped TX ring %d\n",
          ring->index);
 }
 return err;
}
