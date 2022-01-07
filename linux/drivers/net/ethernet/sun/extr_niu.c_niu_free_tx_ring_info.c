
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct txdma_mailbox {int dummy; } ;
struct tx_ring_info {scalar_t__ wrap_bit; scalar_t__ cons; scalar_t__ prod; scalar_t__ pending; int * descr; int descr_dma; TYPE_1__* tx_buffs; int * mbox; int mbox_dma; } ;
struct niu {int device; TYPE_2__* ops; } ;
typedef int __le64 ;
struct TYPE_4__ {int (* free_coherent ) (int ,int,int *,int ) ;} ;
struct TYPE_3__ {scalar_t__ skb; } ;


 int MAX_TX_RING_SIZE ;
 int release_tx_packet (struct niu*,struct tx_ring_info*,int) ;
 int stub1 (int ,int,int *,int ) ;
 int stub2 (int ,int,int *,int ) ;

__attribute__((used)) static void niu_free_tx_ring_info(struct niu *np, struct tx_ring_info *rp)
{
 if (rp->mbox) {
  np->ops->free_coherent(np->device,
           sizeof(struct txdma_mailbox),
           rp->mbox, rp->mbox_dma);
  rp->mbox = ((void*)0);
 }
 if (rp->descr) {
  int i;

  for (i = 0; i < MAX_TX_RING_SIZE; i++) {
   if (rp->tx_buffs[i].skb)
    (void) release_tx_packet(np, rp, i);
  }

  np->ops->free_coherent(np->device,
           MAX_TX_RING_SIZE * sizeof(__le64),
           rp->descr, rp->descr_dma);
  rp->descr = ((void*)0);
  rp->pending = 0;
  rp->prod = 0;
  rp->cons = 0;
  rp->wrap_bit = 0;
 }
}
