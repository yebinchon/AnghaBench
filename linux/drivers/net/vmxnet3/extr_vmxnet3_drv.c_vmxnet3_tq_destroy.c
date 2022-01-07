
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int size; int * base; int basePA; } ;
struct TYPE_6__ {int size; int * base; int basePA; } ;
struct TYPE_5__ {int size; int * base; int basePA; } ;
struct vmxnet3_tx_queue {int txdata_desc_size; int * buf_info; int buf_info_pa; TYPE_4__ tx_ring; TYPE_2__ comp_ring; TYPE_1__ data_ring; } ;
struct vmxnet3_adapter {TYPE_3__* pdev; } ;
struct Vmxnet3_TxDesc {int dummy; } ;
struct Vmxnet3_TxCompDesc {int dummy; } ;
struct TYPE_7__ {int dev; } ;


 int dma_free_coherent (int *,int,int *,int ) ;

__attribute__((used)) static void
vmxnet3_tq_destroy(struct vmxnet3_tx_queue *tq,
     struct vmxnet3_adapter *adapter)
{
 if (tq->tx_ring.base) {
  dma_free_coherent(&adapter->pdev->dev, tq->tx_ring.size *
      sizeof(struct Vmxnet3_TxDesc),
      tq->tx_ring.base, tq->tx_ring.basePA);
  tq->tx_ring.base = ((void*)0);
 }
 if (tq->data_ring.base) {
  dma_free_coherent(&adapter->pdev->dev,
      tq->data_ring.size * tq->txdata_desc_size,
      tq->data_ring.base, tq->data_ring.basePA);
  tq->data_ring.base = ((void*)0);
 }
 if (tq->comp_ring.base) {
  dma_free_coherent(&adapter->pdev->dev, tq->comp_ring.size *
      sizeof(struct Vmxnet3_TxCompDesc),
      tq->comp_ring.base, tq->comp_ring.basePA);
  tq->comp_ring.base = ((void*)0);
 }
 if (tq->buf_info) {
  dma_free_coherent(&adapter->pdev->dev,
      tq->tx_ring.size * sizeof(tq->buf_info[0]),
      tq->buf_info, tq->buf_info_pa);
  tq->buf_info = ((void*)0);
 }
}
