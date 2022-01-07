
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alx_txd {int dummy; } ;
struct alx_tx_queue {int count; scalar_t__ tpd_dma; scalar_t__ tpd; int bufs; } ;
struct TYPE_2__ {scalar_t__ dma; scalar_t__ virt; } ;
struct alx_priv {TYPE_1__ descmem; } ;
struct alx_buffer {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (int,int,int ) ;

__attribute__((used)) static int alx_alloc_tx_ring(struct alx_priv *alx, struct alx_tx_queue *txq,
        int offset)
{
 txq->bufs = kcalloc(txq->count, sizeof(struct alx_buffer), GFP_KERNEL);
 if (!txq->bufs)
  return -ENOMEM;

 txq->tpd = alx->descmem.virt + offset;
 txq->tpd_dma = alx->descmem.dma + offset;
 offset += sizeof(struct alx_txd) * txq->count;

 return offset;
}
