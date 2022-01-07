
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxdma_mailbox {int dummy; } ;
struct rx_ring_info {int * rxhash; scalar_t__ rbr_index; scalar_t__ rbr_table_size; int * rbr; int rbr_dma; scalar_t__ rcr_index; scalar_t__ rcr_table_size; int * rcr; int rcr_dma; int * mbox; int mbox_dma; } ;
struct niu {int device; TYPE_1__* ops; } ;
typedef int __le64 ;
typedef int __le32 ;
struct TYPE_2__ {int (* free_coherent ) (int ,int,int *,int ) ;} ;


 int MAX_RBR_RING_SIZE ;
 int MAX_RCR_RING_SIZE ;
 int kfree (int *) ;
 int niu_rbr_free (struct niu*,struct rx_ring_info*) ;
 int stub1 (int ,int,int *,int ) ;
 int stub2 (int ,int,int *,int ) ;
 int stub3 (int ,int,int *,int ) ;

__attribute__((used)) static void niu_free_rx_ring_info(struct niu *np, struct rx_ring_info *rp)
{
 if (rp->mbox) {
  np->ops->free_coherent(np->device,
           sizeof(struct rxdma_mailbox),
           rp->mbox, rp->mbox_dma);
  rp->mbox = ((void*)0);
 }
 if (rp->rcr) {
  np->ops->free_coherent(np->device,
           MAX_RCR_RING_SIZE * sizeof(__le64),
           rp->rcr, rp->rcr_dma);
  rp->rcr = ((void*)0);
  rp->rcr_table_size = 0;
  rp->rcr_index = 0;
 }
 if (rp->rbr) {
  niu_rbr_free(np, rp);

  np->ops->free_coherent(np->device,
           MAX_RBR_RING_SIZE * sizeof(__le32),
           rp->rbr, rp->rbr_dma);
  rp->rbr = ((void*)0);
  rp->rbr_table_size = 0;
  rp->rbr_index = 0;
 }
 kfree(rp->rxhash);
 rp->rxhash = ((void*)0);
}
