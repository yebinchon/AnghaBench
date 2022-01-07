
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mvneta_rx_queue {int size; scalar_t__ left_size; int * skb; scalar_t__ refill_num; scalar_t__ first_to_refill; scalar_t__ descs_phys; scalar_t__ next_desc_to_proc; scalar_t__ last_desc; int * descs; } ;
struct mvneta_port {TYPE_2__* dev; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int MVNETA_DESC_ALIGNED_SIZE ;
 int dev_kfree_skb_any (int *) ;
 int dma_free_coherent (int ,int,int *,scalar_t__) ;
 int mvneta_rxq_drop_pkts (struct mvneta_port*,struct mvneta_rx_queue*) ;

__attribute__((used)) static void mvneta_rxq_deinit(struct mvneta_port *pp,
         struct mvneta_rx_queue *rxq)
{
 mvneta_rxq_drop_pkts(pp, rxq);

 if (rxq->skb)
  dev_kfree_skb_any(rxq->skb);

 if (rxq->descs)
  dma_free_coherent(pp->dev->dev.parent,
      rxq->size * MVNETA_DESC_ALIGNED_SIZE,
      rxq->descs,
      rxq->descs_phys);

 rxq->descs = ((void*)0);
 rxq->last_desc = 0;
 rxq->next_desc_to_proc = 0;
 rxq->descs_phys = 0;
 rxq->first_to_refill = 0;
 rxq->refill_num = 0;
 rxq->skb = ((void*)0);
 rxq->left_size = 0;
}
