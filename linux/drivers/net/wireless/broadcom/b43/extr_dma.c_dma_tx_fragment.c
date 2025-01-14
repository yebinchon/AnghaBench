
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {unsigned char* data; size_t len; } ;
struct ieee80211_tx_info {int flags; } ;
struct b43_private_tx_info {unsigned char* bouncebuffer; } ;
struct b43_dmaring {int current_slot; int used_slots; int dev; int * txhdr_cache; struct b43_dma_ops* ops; } ;
struct b43_dmadesc_meta {int is_last_fragment; void* dmaaddr; struct sk_buff* skb; } ;
struct b43_dmadesc_generic {int dummy; } ;
struct b43_dma_ops {int (* poke_tx ) (struct b43_dmaring*,int ) ;int (* fill_descriptor ) (struct b43_dmaring*,struct b43_dmadesc_generic*,void*,size_t,int,int,int) ;struct b43_dmadesc_generic* (* idx2desc ) (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ;} ;


 int B43_SHM_SHARED ;
 int B43_SHM_SH_MCASTCOOKIE ;
 int EIO ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ;
 int TX_SLOTS_PER_FRAME ;
 scalar_t__ b43_dma_mapping_error (struct b43_dmaring*,void*,size_t,int) ;
 int b43_generate_txhdr (int ,int *,struct sk_buff*,struct ieee80211_tx_info*,int ) ;
 struct b43_private_tx_info* b43_get_priv_tx_info (struct ieee80211_tx_info*) ;
 int b43_shm_write16 (int ,int ,int ,int ) ;
 size_t b43_txhdr_size (int ) ;
 int generate_cookie (struct b43_dmaring*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmemdup (unsigned char*,size_t,int) ;
 void* map_descbuffer (struct b43_dmaring*,unsigned char*,size_t,int) ;
 int memset (struct b43_dmadesc_meta*,int ,int) ;
 int next_slot (struct b43_dmaring*,int) ;
 int request_slot (struct b43_dmaring*) ;
 struct b43_dmadesc_generic* stub1 (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ;
 int stub2 (struct b43_dmaring*,struct b43_dmadesc_generic*,void*,size_t,int,int,int) ;
 struct b43_dmadesc_generic* stub3 (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ;
 int stub4 (struct b43_dmaring*,struct b43_dmadesc_generic*,void*,size_t,int,int,int) ;
 int stub5 (struct b43_dmaring*,int ) ;
 scalar_t__ unlikely (int) ;
 int unmap_descbuffer (struct b43_dmaring*,void*,size_t,int) ;
 int wmb () ;

__attribute__((used)) static int dma_tx_fragment(struct b43_dmaring *ring,
      struct sk_buff *skb)
{
 const struct b43_dma_ops *ops = ring->ops;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct b43_private_tx_info *priv_info = b43_get_priv_tx_info(info);
 u8 *header;
 int slot, old_top_slot, old_used_slots;
 int err;
 struct b43_dmadesc_generic *desc;
 struct b43_dmadesc_meta *meta;
 struct b43_dmadesc_meta *meta_hdr;
 u16 cookie;
 size_t hdrsize = b43_txhdr_size(ring->dev);






 old_top_slot = ring->current_slot;
 old_used_slots = ring->used_slots;


 slot = request_slot(ring);
 desc = ops->idx2desc(ring, slot, &meta_hdr);
 memset(meta_hdr, 0, sizeof(*meta_hdr));

 header = &(ring->txhdr_cache[(slot / TX_SLOTS_PER_FRAME) * hdrsize]);
 cookie = generate_cookie(ring, slot);
 err = b43_generate_txhdr(ring->dev, header,
     skb, info, cookie);
 if (unlikely(err)) {
  ring->current_slot = old_top_slot;
  ring->used_slots = old_used_slots;
  return err;
 }

 meta_hdr->dmaaddr = map_descbuffer(ring, (unsigned char *)header,
        hdrsize, 1);
 if (b43_dma_mapping_error(ring, meta_hdr->dmaaddr, hdrsize, 1)) {
  ring->current_slot = old_top_slot;
  ring->used_slots = old_used_slots;
  return -EIO;
 }
 ops->fill_descriptor(ring, desc, meta_hdr->dmaaddr,
        hdrsize, 1, 0, 0);


 slot = request_slot(ring);
 desc = ops->idx2desc(ring, slot, &meta);
 memset(meta, 0, sizeof(*meta));

 meta->skb = skb;
 meta->is_last_fragment = 1;
 priv_info->bouncebuffer = ((void*)0);

 meta->dmaaddr = map_descbuffer(ring, skb->data, skb->len, 1);

 if (b43_dma_mapping_error(ring, meta->dmaaddr, skb->len, 1)) {
  priv_info->bouncebuffer = kmemdup(skb->data, skb->len,
        GFP_ATOMIC | GFP_DMA);
  if (!priv_info->bouncebuffer) {
   ring->current_slot = old_top_slot;
   ring->used_slots = old_used_slots;
   err = -ENOMEM;
   goto out_unmap_hdr;
  }

  meta->dmaaddr = map_descbuffer(ring, priv_info->bouncebuffer, skb->len, 1);
  if (b43_dma_mapping_error(ring, meta->dmaaddr, skb->len, 1)) {
   kfree(priv_info->bouncebuffer);
   priv_info->bouncebuffer = ((void*)0);
   ring->current_slot = old_top_slot;
   ring->used_slots = old_used_slots;
   err = -EIO;
   goto out_unmap_hdr;
  }
 }

 ops->fill_descriptor(ring, desc, meta->dmaaddr, skb->len, 0, 1, 1);

 if (info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {


  b43_shm_write16(ring->dev, B43_SHM_SHARED,
    B43_SHM_SH_MCASTCOOKIE, cookie);
 }

 wmb();
 ops->poke_tx(ring, next_slot(ring, slot));
 return 0;

out_unmap_hdr:
 unmap_descbuffer(ring, meta_hdr->dmaaddr,
    hdrsize, 1);
 return err;
}
