
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int size; void* base; int basePA; } ;
struct TYPE_6__ {int size; void* base; int basePA; } ;
struct TYPE_5__ {size_t size; void* base; int basePA; } ;
struct vmxnet3_tx_queue {size_t txdata_desc_size; void* buf_info; int buf_info_pa; TYPE_3__ tx_ring; TYPE_2__ comp_ring; TYPE_1__ data_ring; } ;
struct vmxnet3_adapter {TYPE_4__* pdev; int netdev; } ;
struct Vmxnet3_TxDesc {int dummy; } ;
struct Vmxnet3_TxCompDesc {int dummy; } ;
struct TYPE_8__ {int dev; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int *,size_t,int *,int ) ;
 int netdev_err (int ,char*) ;
 int vmxnet3_tq_destroy (struct vmxnet3_tx_queue*,struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_tq_create(struct vmxnet3_tx_queue *tq,
    struct vmxnet3_adapter *adapter)
{
 size_t sz;

 BUG_ON(tq->tx_ring.base || tq->data_ring.base ||
        tq->comp_ring.base || tq->buf_info);

 tq->tx_ring.base = dma_alloc_coherent(&adapter->pdev->dev,
   tq->tx_ring.size * sizeof(struct Vmxnet3_TxDesc),
   &tq->tx_ring.basePA, GFP_KERNEL);
 if (!tq->tx_ring.base) {
  netdev_err(adapter->netdev, "failed to allocate tx ring\n");
  goto err;
 }

 tq->data_ring.base = dma_alloc_coherent(&adapter->pdev->dev,
   tq->data_ring.size * tq->txdata_desc_size,
   &tq->data_ring.basePA, GFP_KERNEL);
 if (!tq->data_ring.base) {
  netdev_err(adapter->netdev, "failed to allocate tx data ring\n");
  goto err;
 }

 tq->comp_ring.base = dma_alloc_coherent(&adapter->pdev->dev,
   tq->comp_ring.size * sizeof(struct Vmxnet3_TxCompDesc),
   &tq->comp_ring.basePA, GFP_KERNEL);
 if (!tq->comp_ring.base) {
  netdev_err(adapter->netdev, "failed to allocate tx comp ring\n");
  goto err;
 }

 sz = tq->tx_ring.size * sizeof(tq->buf_info[0]);
 tq->buf_info = dma_alloc_coherent(&adapter->pdev->dev, sz,
       &tq->buf_info_pa, GFP_KERNEL);
 if (!tq->buf_info)
  goto err;

 return 0;

err:
 vmxnet3_tq_destroy(tq, adapter);
 return -ENOMEM;
}
