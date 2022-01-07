
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct sk_buff {int data; } ;
struct cmdQ_e {int addr_hi; int len_gen; unsigned int flags; scalar_t__ addr_lo; } ;
struct cmdQ_ce {struct sk_buff* skb; } ;
struct cmdQ {unsigned int size; struct cmdQ_ce* centries; struct cmdQ_e* entries; } ;
struct adapter {TYPE_2__* pdev; } ;
typedef int skb_frag_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {unsigned int nr_frags; int * frags; } ;


 int DMA_TO_DEVICE ;
 unsigned int F_CMD_DATAVALID ;
 unsigned int F_CMD_SOP ;
 unsigned int PAGE_SIZE ;
 int PCI_DMA_TODEVICE ;
 unsigned int SGE_TX_DESC_MAX_PLEN ;
 unsigned int V_CMD_EOP (int) ;
 int V_CMD_GEN1 (unsigned int) ;
 unsigned int V_CMD_GEN2 (unsigned int) ;
 int V_CMD_LEN (unsigned int) ;
 int dma_addr ;
 int dma_len ;
 int dma_unmap_addr_set (struct cmdQ_ce*,int ,scalar_t__) ;
 int dma_unmap_len_set (struct cmdQ_ce*,int ,unsigned int) ;
 scalar_t__ likely (unsigned int) ;
 scalar_t__ pci_map_single (TYPE_2__*,int ,unsigned int,int ) ;
 scalar_t__ skb_frag_dma_map (int *,int *,int ,unsigned int,int ) ;
 unsigned int skb_frag_size (int *) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int wmb () ;
 unsigned int write_large_page_tx_descs (unsigned int,struct cmdQ_e**,struct cmdQ_ce**,unsigned int*,scalar_t__*,unsigned int*,unsigned int,struct cmdQ*) ;
 int write_tx_desc (struct cmdQ_e*,scalar_t__,unsigned int,unsigned int,int) ;

__attribute__((used)) static inline void write_tx_descs(struct adapter *adapter, struct sk_buff *skb,
      unsigned int pidx, unsigned int gen,
      struct cmdQ *q)
{
 dma_addr_t mapping, desc_mapping;
 struct cmdQ_e *e, *e1;
 struct cmdQ_ce *ce;
 unsigned int i, flags, first_desc_len, desc_len,
     nfrags = skb_shinfo(skb)->nr_frags;

 e = e1 = &q->entries[pidx];
 ce = &q->centries[pidx];

 mapping = pci_map_single(adapter->pdev, skb->data,
     skb_headlen(skb), PCI_DMA_TODEVICE);

 desc_mapping = mapping;
 desc_len = skb_headlen(skb);

 flags = F_CMD_DATAVALID | F_CMD_SOP |
     V_CMD_EOP(nfrags == 0 && desc_len <= SGE_TX_DESC_MAX_PLEN) |
     V_CMD_GEN2(gen);
 first_desc_len = (desc_len <= SGE_TX_DESC_MAX_PLEN) ?
     desc_len : SGE_TX_DESC_MAX_PLEN;
 e->addr_lo = (u32)desc_mapping;
 e->addr_hi = (u64)desc_mapping >> 32;
 e->len_gen = V_CMD_LEN(first_desc_len) | V_CMD_GEN1(gen);
 ce->skb = ((void*)0);
 dma_unmap_len_set(ce, dma_len, 0);

 if (PAGE_SIZE > SGE_TX_DESC_MAX_PLEN &&
     desc_len > SGE_TX_DESC_MAX_PLEN) {
  desc_mapping += first_desc_len;
  desc_len -= first_desc_len;
  e1++;
  ce++;
  if (++pidx == q->size) {
   pidx = 0;
   gen ^= 1;
   e1 = q->entries;
   ce = q->centries;
  }
  pidx = write_large_page_tx_descs(pidx, &e1, &ce, &gen,
       &desc_mapping, &desc_len,
       nfrags, q);

  if (likely(desc_len))
   write_tx_desc(e1, desc_mapping, desc_len, gen,
          nfrags == 0);
 }

 ce->skb = ((void*)0);
 dma_unmap_addr_set(ce, dma_addr, mapping);
 dma_unmap_len_set(ce, dma_len, skb_headlen(skb));

 for (i = 0; nfrags--; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  e1++;
  ce++;
  if (++pidx == q->size) {
   pidx = 0;
   gen ^= 1;
   e1 = q->entries;
   ce = q->centries;
  }

  mapping = skb_frag_dma_map(&adapter->pdev->dev, frag, 0,
        skb_frag_size(frag), DMA_TO_DEVICE);
  desc_mapping = mapping;
  desc_len = skb_frag_size(frag);

  pidx = write_large_page_tx_descs(pidx, &e1, &ce, &gen,
       &desc_mapping, &desc_len,
       nfrags, q);
  if (likely(desc_len))
   write_tx_desc(e1, desc_mapping, desc_len, gen,
          nfrags == 0);
  ce->skb = ((void*)0);
  dma_unmap_addr_set(ce, dma_addr, mapping);
  dma_unmap_len_set(ce, dma_len, skb_frag_size(frag));
 }
 ce->skb = skb;
 wmb();
 e->flags = flags;
}
