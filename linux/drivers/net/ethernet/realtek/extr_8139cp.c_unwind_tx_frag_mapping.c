
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cp_private {TYPE_1__* pdev; struct cp_desc* tx_ring; int ** tx_skb; } ;
struct cp_desc {int addr; } ;
typedef int skb_frag_t ;
struct TYPE_4__ {int * frags; } ;
struct TYPE_3__ {int dev; } ;


 int PCI_DMA_TODEVICE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int le64_to_cpu (int ) ;
 int skb_frag_size (int *) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void unwind_tx_frag_mapping(struct cp_private *cp, struct sk_buff *skb,
       int first, int entry_last)
{
 int frag, index;
 struct cp_desc *txd;
 skb_frag_t *this_frag;
 for (frag = 0; frag+first < entry_last; frag++) {
  index = first+frag;
  cp->tx_skb[index] = ((void*)0);
  txd = &cp->tx_ring[index];
  this_frag = &skb_shinfo(skb)->frags[frag];
  dma_unmap_single(&cp->pdev->dev, le64_to_cpu(txd->addr),
     skb_frag_size(this_frag), PCI_DMA_TODEVICE);
 }
}
