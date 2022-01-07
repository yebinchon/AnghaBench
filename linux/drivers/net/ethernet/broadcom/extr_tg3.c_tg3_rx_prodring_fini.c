
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3_rx_prodring_set {int * rx_jmb; int rx_jmb_mapping; int * rx_std; int rx_std_mapping; int * rx_jmb_buffers; int * rx_std_buffers; } ;
struct tg3 {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int TG3_RX_JMB_RING_BYTES (struct tg3*) ;
 int TG3_RX_STD_RING_BYTES (struct tg3*) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void tg3_rx_prodring_fini(struct tg3 *tp,
     struct tg3_rx_prodring_set *tpr)
{
 kfree(tpr->rx_std_buffers);
 tpr->rx_std_buffers = ((void*)0);
 kfree(tpr->rx_jmb_buffers);
 tpr->rx_jmb_buffers = ((void*)0);
 if (tpr->rx_std) {
  dma_free_coherent(&tp->pdev->dev, TG3_RX_STD_RING_BYTES(tp),
      tpr->rx_std, tpr->rx_std_mapping);
  tpr->rx_std = ((void*)0);
 }
 if (tpr->rx_jmb) {
  dma_free_coherent(&tp->pdev->dev, TG3_RX_JMB_RING_BYTES(tp),
      tpr->rx_jmb, tpr->rx_jmb_mapping);
  tpr->rx_jmb = ((void*)0);
 }
}
