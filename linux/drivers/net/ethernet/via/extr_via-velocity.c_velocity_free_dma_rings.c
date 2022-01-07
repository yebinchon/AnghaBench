
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int pool_dma; int ring; } ;
struct TYPE_5__ {int numq; } ;
struct TYPE_4__ {int numrx; int numtx; } ;
struct velocity_info {TYPE_3__ rx; int dev; TYPE_2__ tx; TYPE_1__ options; } ;
struct tx_desc {int dummy; } ;
struct rx_desc {int dummy; } ;


 int dma_free_coherent (int ,int const,int ,int ) ;

__attribute__((used)) static void velocity_free_dma_rings(struct velocity_info *vptr)
{
 const int size = vptr->options.numrx * sizeof(struct rx_desc) +
  vptr->options.numtx * sizeof(struct tx_desc) * vptr->tx.numq;

 dma_free_coherent(vptr->dev, size, vptr->rx.ring, vptr->rx.pool_dma);
}
