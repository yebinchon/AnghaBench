
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hw_owned; } ;
union desc_stat {TYPE_3__ tx; int data; } ;
struct net_device {int dummy; } ;
struct ksz_desc_info {int last; scalar_t__ avail; scalar_t__ alloc; int mask; struct ksz_desc* ring; } ;
struct ksz_hw {struct ksz_desc_info tx_desc_info; } ;
struct ksz_dma_buf {TYPE_4__* skb; int len; int dma; } ;
struct ksz_desc {TYPE_2__* phw; } ;
struct dev_info {int hwlock; int pdev; struct ksz_hw hw; } ;
struct TYPE_8__ {struct net_device* dev; } ;
struct TYPE_5__ {int data; } ;
struct TYPE_6__ {TYPE_1__ ctrl; } ;


 struct ksz_dma_buf* DMA_BUFFER (struct ksz_desc*) ;
 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_irq (TYPE_4__*) ;
 int le32_to_cpu (int ) ;
 int netif_trans_update (struct net_device*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int reset_desc (struct ksz_desc*,union desc_stat) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void transmit_cleanup(struct dev_info *hw_priv, int normal)
{
 int last;
 union desc_stat status;
 struct ksz_hw *hw = &hw_priv->hw;
 struct ksz_desc_info *info = &hw->tx_desc_info;
 struct ksz_desc *desc;
 struct ksz_dma_buf *dma_buf;
 struct net_device *dev = ((void*)0);

 spin_lock_irq(&hw_priv->hwlock);
 last = info->last;

 while (info->avail < info->alloc) {

  desc = &info->ring[last];
  status.data = le32_to_cpu(desc->phw->ctrl.data);
  if (status.tx.hw_owned) {
   if (normal)
    break;
   else
    reset_desc(desc, status);
  }

  dma_buf = DMA_BUFFER(desc);
  pci_unmap_single(
   hw_priv->pdev, dma_buf->dma, dma_buf->len,
   PCI_DMA_TODEVICE);


  if (dma_buf->skb) {
   dev = dma_buf->skb->dev;


   dev_kfree_skb_irq(dma_buf->skb);
   dma_buf->skb = ((void*)0);
  }


  last++;
  last &= info->mask;
  info->avail++;
 }
 info->last = last;
 spin_unlock_irq(&hw_priv->hwlock);


 if (dev)
  netif_trans_update(dev);
}
