
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct tc35815_local {TYPE_3__* tfd_base; TYPE_1__* tx_skbs; int pci_dev; } ;
struct sk_buff {int len; } ;
struct net_device {int name; } ;
struct TYPE_5__ {int FDSystem; } ;
struct TYPE_6__ {TYPE_2__ fd; } ;
struct TYPE_4__ {scalar_t__ skb_dma; struct sk_buff* skb; } ;


 int BUG_ON (int) ;
 int PCI_DMA_TODEVICE ;
 int TX_FD_NUM ;
 int cpu_to_le32 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int le32_to_cpu (int ) ;
 struct tc35815_local* netdev_priv (struct net_device*) ;
 int panic_queues (struct net_device*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;
 int printk (char*,int ,int) ;
 int tc35815_init_queues (struct net_device*) ;

__attribute__((used)) static void
tc35815_clear_queues(struct net_device *dev)
{
 struct tc35815_local *lp = netdev_priv(dev);
 int i;

 for (i = 0; i < TX_FD_NUM; i++) {
  u32 fdsystem = le32_to_cpu(lp->tfd_base[i].fd.FDSystem);
  struct sk_buff *skb =
   fdsystem != 0xffffffff ?
   lp->tx_skbs[fdsystem].skb : ((void*)0);






  BUG_ON(lp->tx_skbs[i].skb != skb);

  if (skb) {
   pci_unmap_single(lp->pci_dev, lp->tx_skbs[i].skb_dma, skb->len, PCI_DMA_TODEVICE);
   lp->tx_skbs[i].skb = ((void*)0);
   lp->tx_skbs[i].skb_dma = 0;
   dev_kfree_skb_any(skb);
  }
  lp->tfd_base[i].fd.FDSystem = cpu_to_le32(0xffffffff);
 }

 tc35815_init_queues(dev);
}
