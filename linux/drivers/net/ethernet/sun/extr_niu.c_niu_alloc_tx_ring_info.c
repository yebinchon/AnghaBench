
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct txdma_mailbox {int dummy; } ;
struct tx_ring_info {int pending; int mark_freq; scalar_t__ wrap_bit; scalar_t__ cons; scalar_t__ prod; scalar_t__ descr; int descr_dma; scalar_t__ mbox; int mbox_dma; } ;
struct niu {int dev; int device; TYPE_1__* ops; } ;
typedef int __le64 ;
struct TYPE_2__ {scalar_t__ (* alloc_coherent ) (int ,int,int *,int ) ;} ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_TX_RING_SIZE ;
 int netdev_err (int ,char*,scalar_t__) ;
 int niu_set_max_burst (struct niu*,struct tx_ring_info*) ;
 scalar_t__ stub1 (int ,int,int *,int ) ;
 scalar_t__ stub2 (int ,int,int *,int ) ;

__attribute__((used)) static int niu_alloc_tx_ring_info(struct niu *np,
      struct tx_ring_info *rp)
{
 BUILD_BUG_ON(sizeof(struct txdma_mailbox) != 64);

 rp->mbox = np->ops->alloc_coherent(np->device,
        sizeof(struct txdma_mailbox),
        &rp->mbox_dma, GFP_KERNEL);
 if (!rp->mbox)
  return -ENOMEM;
 if ((unsigned long)rp->mbox & (64UL - 1)) {
  netdev_err(np->dev, "Coherent alloc gives misaligned TXDMA mailbox %p\n",
      rp->mbox);
  return -EINVAL;
 }

 rp->descr = np->ops->alloc_coherent(np->device,
         MAX_TX_RING_SIZE * sizeof(__le64),
         &rp->descr_dma, GFP_KERNEL);
 if (!rp->descr)
  return -ENOMEM;
 if ((unsigned long)rp->descr & (64UL - 1)) {
  netdev_err(np->dev, "Coherent alloc gives misaligned TXDMA descr table %p\n",
      rp->descr);
  return -EINVAL;
 }

 rp->pending = MAX_TX_RING_SIZE;
 rp->prod = 0;
 rp->cons = 0;
 rp->wrap_bit = 0;


 rp->mark_freq = rp->pending / 4;

 niu_set_max_burst(np, rp);

 return 0;
}
