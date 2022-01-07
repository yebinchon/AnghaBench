
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {struct sk_buff* skb; int dma_addr; } ;
struct s_smt_fp_rxd {struct s_smt_fp_rxd* rxd_next; TYPE_1__ rxd_os; } ;
struct TYPE_4__ {int MaxFrameSize; int pdev; } ;
struct s_smc {TYPE_2__ os; } ;
typedef TYPE_2__ skfddi_priv ;


 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int pci_unmap_single (int *,int ,int,int ) ;
 int pr_debug (char*) ;
 int printk (char*) ;

void mac_drv_clear_rxd(struct s_smc *smc, volatile struct s_smt_fp_rxd *rxd,
         int frag_count)
{

 struct sk_buff *skb;

 pr_debug("entering mac_drv_clear_rxd\n");

 if (frag_count != 1)

  printk("fddi: Multi-fragment clear!\n");

 for (; frag_count > 0; frag_count--) {
  skb = rxd->rxd_os.skb;
  if (skb != ((void*)0)) {
   skfddi_priv *bp = &smc->os;
   int MaxFrameSize = bp->MaxFrameSize;

   pci_unmap_single(&bp->pdev, rxd->rxd_os.dma_addr,
      MaxFrameSize, PCI_DMA_FROMDEVICE);

   dev_kfree_skb(skb);
   rxd->rxd_os.skb = ((void*)0);
  }
  rxd = rxd->rxd_next;

 }
}
