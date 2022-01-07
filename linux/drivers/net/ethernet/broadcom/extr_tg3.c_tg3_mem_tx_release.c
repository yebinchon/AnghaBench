
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3_napi {int * tx_buffers; int * tx_ring; int tx_desc_mapping; } ;
struct tg3 {int irq_max; TYPE_1__* pdev; struct tg3_napi* napi; } ;
struct TYPE_2__ {int dev; } ;


 int TG3_TX_RING_BYTES ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void tg3_mem_tx_release(struct tg3 *tp)
{
 int i;

 for (i = 0; i < tp->irq_max; i++) {
  struct tg3_napi *tnapi = &tp->napi[i];

  if (tnapi->tx_ring) {
   dma_free_coherent(&tp->pdev->dev, TG3_TX_RING_BYTES,
    tnapi->tx_ring, tnapi->tx_desc_mapping);
   tnapi->tx_ring = ((void*)0);
  }

  kfree(tnapi->tx_buffers);
  tnapi->tx_buffers = ((void*)0);
 }
}
