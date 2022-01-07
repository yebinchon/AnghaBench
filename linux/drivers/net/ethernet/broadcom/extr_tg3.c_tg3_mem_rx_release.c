
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3_napi {int * rx_rcb; int rx_rcb_mapping; int prodring; } ;
struct tg3 {int irq_max; TYPE_1__* pdev; struct tg3_napi* napi; } ;
struct TYPE_2__ {int dev; } ;


 int TG3_RX_RCB_RING_BYTES (struct tg3*) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int tg3_rx_prodring_fini (struct tg3*,int *) ;

__attribute__((used)) static void tg3_mem_rx_release(struct tg3 *tp)
{
 int i;

 for (i = 0; i < tp->irq_max; i++) {
  struct tg3_napi *tnapi = &tp->napi[i];

  tg3_rx_prodring_fini(tp, &tnapi->prodring);

  if (!tnapi->rx_rcb)
   continue;

  dma_free_coherent(&tp->pdev->dev,
      TG3_RX_RCB_RING_BYTES(tp),
      tnapi->rx_rcb,
      tnapi->rx_rcb_mapping);
  tnapi->rx_rcb = ((void*)0);
 }
}
