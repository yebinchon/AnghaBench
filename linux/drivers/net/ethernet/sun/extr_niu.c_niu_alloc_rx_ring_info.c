
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxdma_mailbox {int dummy; } ;
struct rx_ring_info {int rcr_table_size; int rbr_table_size; scalar_t__ rbr_pending; scalar_t__ rbr_index; scalar_t__ rbr; int rbr_dma; scalar_t__ rcr_index; scalar_t__ rcr; int rcr_dma; scalar_t__ mbox; int mbox_dma; int rxhash; } ;
struct page {int dummy; } ;
struct niu {int dev; int device; TYPE_1__* ops; } ;
typedef int __le64 ;
typedef int __le32 ;
struct TYPE_2__ {scalar_t__ (* alloc_coherent ) (int ,int,int *,int ) ;} ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_RBR_RING_SIZE ;
 int MAX_RCR_RING_SIZE ;
 int kcalloc (int,int,int ) ;
 int netdev_err (int ,char*,scalar_t__) ;
 scalar_t__ stub1 (int ,int,int *,int ) ;
 scalar_t__ stub2 (int ,int,int *,int ) ;
 scalar_t__ stub3 (int ,int,int *,int ) ;

__attribute__((used)) static int niu_alloc_rx_ring_info(struct niu *np,
      struct rx_ring_info *rp)
{
 BUILD_BUG_ON(sizeof(struct rxdma_mailbox) != 64);

 rp->rxhash = kcalloc(MAX_RBR_RING_SIZE, sizeof(struct page *),
        GFP_KERNEL);
 if (!rp->rxhash)
  return -ENOMEM;

 rp->mbox = np->ops->alloc_coherent(np->device,
        sizeof(struct rxdma_mailbox),
        &rp->mbox_dma, GFP_KERNEL);
 if (!rp->mbox)
  return -ENOMEM;
 if ((unsigned long)rp->mbox & (64UL - 1)) {
  netdev_err(np->dev, "Coherent alloc gives misaligned RXDMA mailbox %p\n",
      rp->mbox);
  return -EINVAL;
 }

 rp->rcr = np->ops->alloc_coherent(np->device,
       MAX_RCR_RING_SIZE * sizeof(__le64),
       &rp->rcr_dma, GFP_KERNEL);
 if (!rp->rcr)
  return -ENOMEM;
 if ((unsigned long)rp->rcr & (64UL - 1)) {
  netdev_err(np->dev, "Coherent alloc gives misaligned RXDMA RCR table %p\n",
      rp->rcr);
  return -EINVAL;
 }
 rp->rcr_table_size = MAX_RCR_RING_SIZE;
 rp->rcr_index = 0;

 rp->rbr = np->ops->alloc_coherent(np->device,
       MAX_RBR_RING_SIZE * sizeof(__le32),
       &rp->rbr_dma, GFP_KERNEL);
 if (!rp->rbr)
  return -ENOMEM;
 if ((unsigned long)rp->rbr & (64UL - 1)) {
  netdev_err(np->dev, "Coherent alloc gives misaligned RXDMA RBR table %p\n",
      rp->rbr);
  return -EINVAL;
 }
 rp->rbr_table_size = MAX_RBR_RING_SIZE;
 rp->rbr_index = 0;
 rp->rbr_pending = 0;

 return 0;
}
