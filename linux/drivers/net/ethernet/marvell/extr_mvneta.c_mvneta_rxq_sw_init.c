
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mvneta_rx_queue {int size; int last_desc; int descs; int descs_phys; } ;
struct mvneta_port {int rx_ring_size; TYPE_2__* dev; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MVNETA_DESC_ALIGNED_SIZE ;
 int dma_alloc_coherent (int ,int,int *,int ) ;

__attribute__((used)) static int mvneta_rxq_sw_init(struct mvneta_port *pp,
         struct mvneta_rx_queue *rxq)
{
 rxq->size = pp->rx_ring_size;


 rxq->descs = dma_alloc_coherent(pp->dev->dev.parent,
     rxq->size * MVNETA_DESC_ALIGNED_SIZE,
     &rxq->descs_phys, GFP_KERNEL);
 if (!rxq->descs)
  return -ENOMEM;

 rxq->last_desc = rxq->size - 1;

 return 0;
}
