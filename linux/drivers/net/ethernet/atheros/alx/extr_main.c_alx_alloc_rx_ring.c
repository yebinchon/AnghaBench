
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alx_rx_queue {int count; scalar_t__ rfd_dma; scalar_t__ rfd; scalar_t__ rrd_dma; scalar_t__ rrd; int bufs; } ;
struct alx_rrd {int dummy; } ;
struct alx_rfd {int dummy; } ;
struct TYPE_2__ {scalar_t__ dma; scalar_t__ virt; } ;
struct alx_priv {TYPE_1__ descmem; } ;
struct alx_buffer {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (int,int,int ) ;

__attribute__((used)) static int alx_alloc_rx_ring(struct alx_priv *alx, struct alx_rx_queue *rxq,
        int offset)
{
 rxq->bufs = kcalloc(rxq->count, sizeof(struct alx_buffer), GFP_KERNEL);
 if (!rxq->bufs)
  return -ENOMEM;

 rxq->rrd = alx->descmem.virt + offset;
 rxq->rrd_dma = alx->descmem.dma + offset;
 offset += sizeof(struct alx_rrd) * rxq->count;

 rxq->rfd = alx->descmem.virt + offset;
 rxq->rfd_dma = alx->descmem.dma + offset;
 offset += sizeof(struct alx_rfd) * rxq->count;

 return offset;
}
