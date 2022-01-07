
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sk_buff {scalar_t__ ip_summed; int const csum_offset; int len; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct cas {int* tx_new; int * tx_lock; scalar_t__ regs; TYPE_2__* pdev; struct sk_buff*** tx_skbs; struct net_device* dev; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int nr_frags; int * frags; } ;


 int CAS_BASE (int ,int const) ;
 int CAS_TABORT (struct cas*) ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int DMA_TO_DEVICE ;
 int KERN_DEBUG ;
 int MAX_SKB_FRAGS ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ REG_TX_KICKN (int) ;
 int TX_BUFFS_AVAIL (struct cas*,int) ;
 int TX_DESC_CSUM_EN ;
 int TX_DESC_CSUM_START ;
 int TX_DESC_CSUM_STUFF ;
 int TX_DESC_NEXT (int,int) ;
 int TX_DESC_SOF ;
 int cas_calc_tabort (struct cas*,unsigned long,int) ;
 void* cas_page_map (int ) ;
 int cas_page_unmap (void*) ;
 int cas_write_txd (struct cas*,int,int,int ,int,int,int) ;
 int memcpy (int ,void*,int) ;
 int netdev_err (struct net_device*,char*) ;
 int netif_printk (struct cas*,int ,int ,struct net_device*,char*,int,int,int ,int) ;
 int netif_stop_queue (struct net_device*) ;
 int offset_in_page (scalar_t__) ;
 int pci_map_page (TYPE_2__*,int ,int ,int,int ) ;
 int skb_checksum_start_offset (struct sk_buff*) ;
 int skb_copy_from_linear_data_offset (struct sk_buff*,int,int ,int) ;
 int skb_frag_dma_map (int *,int const*,int ,int,int ) ;
 unsigned long skb_frag_off (int const*) ;
 int skb_frag_page (int const*) ;
 int skb_frag_size (int const*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_queued ;
 int tx_tiny_buf (struct cas*,int,int) ;
 int tx_tiny_map (struct cas*,int,int,int) ;
 scalar_t__ unlikely (int) ;
 int virt_to_page (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline int cas_xmit_tx_ringN(struct cas *cp, int ring,
        struct sk_buff *skb)
{
 struct net_device *dev = cp->dev;
 int entry, nr_frags, frag, tabort, tentry;
 dma_addr_t mapping;
 unsigned long flags;
 u64 ctrl;
 u32 len;

 spin_lock_irqsave(&cp->tx_lock[ring], flags);


 if (TX_BUFFS_AVAIL(cp, ring) <=
     CAS_TABORT(cp)*(skb_shinfo(skb)->nr_frags + 1)) {
  netif_stop_queue(dev);
  spin_unlock_irqrestore(&cp->tx_lock[ring], flags);
  netdev_err(dev, "BUG! Tx Ring full when queue awake!\n");
  return 1;
 }

 ctrl = 0;
 if (skb->ip_summed == CHECKSUM_PARTIAL) {
  const u64 csum_start_off = skb_checksum_start_offset(skb);
  const u64 csum_stuff_off = csum_start_off + skb->csum_offset;

  ctrl = TX_DESC_CSUM_EN |
   CAS_BASE(TX_DESC_CSUM_START, csum_start_off) |
   CAS_BASE(TX_DESC_CSUM_STUFF, csum_stuff_off);
 }

 entry = cp->tx_new[ring];
 cp->tx_skbs[ring][entry] = skb;

 nr_frags = skb_shinfo(skb)->nr_frags;
 len = skb_headlen(skb);
 mapping = pci_map_page(cp->pdev, virt_to_page(skb->data),
          offset_in_page(skb->data), len,
          PCI_DMA_TODEVICE);

 tentry = entry;
 tabort = cas_calc_tabort(cp, (unsigned long) skb->data, len);
 if (unlikely(tabort)) {

  cas_write_txd(cp, ring, entry, mapping, len - tabort,
         ctrl | TX_DESC_SOF, 0);
  entry = TX_DESC_NEXT(ring, entry);

  skb_copy_from_linear_data_offset(skb, len - tabort,
         tx_tiny_buf(cp, ring, entry), tabort);
  mapping = tx_tiny_map(cp, ring, entry, tentry);
  cas_write_txd(cp, ring, entry, mapping, tabort, ctrl,
         (nr_frags == 0));
 } else {
  cas_write_txd(cp, ring, entry, mapping, len, ctrl |
         TX_DESC_SOF, (nr_frags == 0));
 }
 entry = TX_DESC_NEXT(ring, entry);

 for (frag = 0; frag < nr_frags; frag++) {
  const skb_frag_t *fragp = &skb_shinfo(skb)->frags[frag];

  len = skb_frag_size(fragp);
  mapping = skb_frag_dma_map(&cp->pdev->dev, fragp, 0, len,
        DMA_TO_DEVICE);

  tabort = cas_calc_tabort(cp, skb_frag_off(fragp), len);
  if (unlikely(tabort)) {
   void *addr;


   cas_write_txd(cp, ring, entry, mapping, len - tabort,
          ctrl, 0);
   entry = TX_DESC_NEXT(ring, entry);

   addr = cas_page_map(skb_frag_page(fragp));
   memcpy(tx_tiny_buf(cp, ring, entry),
          addr + skb_frag_off(fragp) + len - tabort,
          tabort);
   cas_page_unmap(addr);
   mapping = tx_tiny_map(cp, ring, entry, tentry);
   len = tabort;
  }

  cas_write_txd(cp, ring, entry, mapping, len, ctrl,
         (frag + 1 == nr_frags));
  entry = TX_DESC_NEXT(ring, entry);
 }

 cp->tx_new[ring] = entry;
 if (TX_BUFFS_AVAIL(cp, ring) <= CAS_TABORT(cp)*(MAX_SKB_FRAGS + 1))
  netif_stop_queue(dev);

 netif_printk(cp, tx_queued, KERN_DEBUG, dev,
       "tx[%d] queued, slot %d, skblen %d, avail %d\n",
       ring, entry, skb->len, TX_BUFFS_AVAIL(cp, ring));
 writel(entry, cp->regs + REG_TX_KICKN(ring));
 spin_unlock_irqrestore(&cp->tx_lock[ring], flags);
 return 0;
}
