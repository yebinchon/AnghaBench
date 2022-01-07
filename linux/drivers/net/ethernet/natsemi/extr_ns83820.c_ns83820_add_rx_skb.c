
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int data; } ;
struct TYPE_2__ {unsigned int next_empty; unsigned int next_rx; scalar_t__ phy_descs; int * descs; struct sk_buff** skbs; int nr_used; } ;
struct ns83820 {TYPE_1__ rx_info; int pci_dev; } ;
typedef int dma_addr_t ;
typedef int __le32 ;


 int BUG_ON (int) ;
 int CMDSTS_INTR ;
 unsigned int DESC_SIZE ;
 unsigned int NR_RX_DESC ;
 int PCI_DMA_FROMDEVICE ;
 int REAL_RX_BUF_SIZE ;
 int build_rx_desc (struct ns83820*,int *,int ,int ,int,int ) ;
 int cpu_to_le32 (scalar_t__) ;
 int dprintk (char*,unsigned int,int ,unsigned int) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int nr_rx_empty (struct ns83820*) ;
 int pci_map_single (int ,int ,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int ns83820_add_rx_skb(struct ns83820 *dev, struct sk_buff *skb)
{
 unsigned next_empty;
 u32 cmdsts;
 __le32 *sg;
 dma_addr_t buf;

 next_empty = dev->rx_info.next_empty;


 if (unlikely(nr_rx_empty(dev) <= 2)) {
  kfree_skb(skb);
  return 1;
 }
 sg = dev->rx_info.descs + (next_empty * DESC_SIZE);
 BUG_ON(((void*)0) != dev->rx_info.skbs[next_empty]);
 dev->rx_info.skbs[next_empty] = skb;

 dev->rx_info.next_empty = (next_empty + 1) % NR_RX_DESC;
 cmdsts = REAL_RX_BUF_SIZE | CMDSTS_INTR;
 buf = pci_map_single(dev->pci_dev, skb->data,
        REAL_RX_BUF_SIZE, PCI_DMA_FROMDEVICE);
 build_rx_desc(dev, sg, 0, buf, cmdsts, 0);

 if (likely(next_empty != dev->rx_info.next_rx))
  dev->rx_info.descs[((NR_RX_DESC + next_empty - 1) % NR_RX_DESC) * DESC_SIZE] = cpu_to_le32(dev->rx_info.phy_descs + (next_empty * DESC_SIZE * 4));

 return 0;
}
