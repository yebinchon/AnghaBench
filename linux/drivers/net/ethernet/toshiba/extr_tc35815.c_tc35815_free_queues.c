
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct tc35815_local {int * fd_buf; int fd_buf_dma; int pci_dev; TYPE_4__* rx_skbs; int * fbl_ptr; int * rfd_cur; int * rfd_limit; int * rfd_base; TYPE_3__* tfd_base; TYPE_1__* tx_skbs; } ;
struct sk_buff {int len; } ;
struct net_device {int name; } ;
struct TYPE_8__ {int * skb; int skb_dma; } ;
struct TYPE_6__ {int FDSystem; } ;
struct TYPE_7__ {TYPE_2__ fd; } ;
struct TYPE_5__ {scalar_t__ skb_dma; struct sk_buff* skb; } ;


 int BUG_ON (int) ;
 int FD_PAGE_NUM ;
 int PAGE_SIZE ;
 int PCI_DMA_TODEVICE ;
 int RX_BUF_NUM ;
 int TX_FD_NUM ;
 int cpu_to_le32 (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int free_rxbuf_skb (int ,int *,int ) ;
 int le32_to_cpu (int ) ;
 struct tc35815_local* netdev_priv (struct net_device*) ;
 int panic_queues (struct net_device*) ;
 int pci_free_consistent (int ,int,int *,int ) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;
 int printk (char*,int ,int) ;

__attribute__((used)) static void
tc35815_free_queues(struct net_device *dev)
{
 struct tc35815_local *lp = netdev_priv(dev);
 int i;

 if (lp->tfd_base) {
  for (i = 0; i < TX_FD_NUM; i++) {
   u32 fdsystem = le32_to_cpu(lp->tfd_base[i].fd.FDSystem);
   struct sk_buff *skb =
    fdsystem != 0xffffffff ?
    lp->tx_skbs[fdsystem].skb : ((void*)0);






   BUG_ON(lp->tx_skbs[i].skb != skb);

   if (skb) {
    pci_unmap_single(lp->pci_dev, lp->tx_skbs[i].skb_dma, skb->len, PCI_DMA_TODEVICE);
    dev_kfree_skb(skb);
    lp->tx_skbs[i].skb = ((void*)0);
    lp->tx_skbs[i].skb_dma = 0;
   }
   lp->tfd_base[i].fd.FDSystem = cpu_to_le32(0xffffffff);
  }
 }

 lp->rfd_base = ((void*)0);
 lp->rfd_limit = ((void*)0);
 lp->rfd_cur = ((void*)0);
 lp->fbl_ptr = ((void*)0);

 for (i = 0; i < RX_BUF_NUM; i++) {
  if (lp->rx_skbs[i].skb) {
   free_rxbuf_skb(lp->pci_dev, lp->rx_skbs[i].skb,
           lp->rx_skbs[i].skb_dma);
   lp->rx_skbs[i].skb = ((void*)0);
  }
 }
 if (lp->fd_buf) {
  pci_free_consistent(lp->pci_dev, PAGE_SIZE * FD_PAGE_NUM,
        lp->fd_buf, lp->fd_buf_dma);
  lp->fd_buf = ((void*)0);
 }
}
