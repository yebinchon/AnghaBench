
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; TYPE_5__* base; int basePA; } ;
struct TYPE_6__ {size_t desc_size; TYPE_5__* base; int basePA; } ;
struct vmxnet3_rx_queue {TYPE_5__** buf_info; int buf_info_pa; TYPE_3__* rx_ring; TYPE_2__ comp_ring; TYPE_1__ data_ring; } ;
struct vmxnet3_rx_buf_info {int dummy; } ;
struct vmxnet3_adapter {TYPE_4__* pdev; } ;
struct Vmxnet3_RxDesc {int dummy; } ;
struct Vmxnet3_RxCompDesc {int dummy; } ;
struct TYPE_10__ {int * page; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {int size; TYPE_5__* base; int basePA; } ;


 int BUG_ON (int ) ;
 int dma_free_coherent (int *,size_t,TYPE_5__*,int ) ;

__attribute__((used)) static void vmxnet3_rq_destroy(struct vmxnet3_rx_queue *rq,
          struct vmxnet3_adapter *adapter)
{
 int i;
 int j;


 for (i = 0; i < 2; i++) {
  if (rq->buf_info[i]) {
   for (j = 0; j < rq->rx_ring[i].size; j++)
    BUG_ON(rq->buf_info[i][j].page != ((void*)0));
  }
 }


 for (i = 0; i < 2; i++) {
  if (rq->rx_ring[i].base) {
   dma_free_coherent(&adapter->pdev->dev,
       rq->rx_ring[i].size
       * sizeof(struct Vmxnet3_RxDesc),
       rq->rx_ring[i].base,
       rq->rx_ring[i].basePA);
   rq->rx_ring[i].base = ((void*)0);
  }
 }

 if (rq->data_ring.base) {
  dma_free_coherent(&adapter->pdev->dev,
      rq->rx_ring[0].size * rq->data_ring.desc_size,
      rq->data_ring.base, rq->data_ring.basePA);
  rq->data_ring.base = ((void*)0);
 }

 if (rq->comp_ring.base) {
  dma_free_coherent(&adapter->pdev->dev, rq->comp_ring.size
      * sizeof(struct Vmxnet3_RxCompDesc),
      rq->comp_ring.base, rq->comp_ring.basePA);
  rq->comp_ring.base = ((void*)0);
 }

 if (rq->buf_info[0]) {
  size_t sz = sizeof(struct vmxnet3_rx_buf_info) *
   (rq->rx_ring[0].size + rq->rx_ring[1].size);
  dma_free_coherent(&adapter->pdev->dev, sz, rq->buf_info[0],
      rq->buf_info_pa);
  rq->buf_info[0] = rq->buf_info[1] = ((void*)0);
 }
}
