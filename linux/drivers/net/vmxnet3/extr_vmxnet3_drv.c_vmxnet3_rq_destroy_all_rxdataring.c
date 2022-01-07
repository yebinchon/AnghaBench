
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int desc_size; int * base; int basePA; } ;
struct vmxnet3_rx_queue {TYPE_3__ data_ring; TYPE_2__* rx_ring; } ;
struct vmxnet3_adapter {int num_rx_queues; TYPE_1__* pdev; struct vmxnet3_rx_queue* rx_queue; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_4__ {int dev; } ;


 int dma_free_coherent (int *,int,int *,int ) ;

__attribute__((used)) static void
vmxnet3_rq_destroy_all_rxdataring(struct vmxnet3_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct vmxnet3_rx_queue *rq = &adapter->rx_queue[i];

  if (rq->data_ring.base) {
   dma_free_coherent(&adapter->pdev->dev,
       (rq->rx_ring[0].size *
       rq->data_ring.desc_size),
       rq->data_ring.base,
       rq->data_ring.basePA);
   rq->data_ring.base = ((void*)0);
   rq->data_ring.desc_size = 0;
  }
 }
}
