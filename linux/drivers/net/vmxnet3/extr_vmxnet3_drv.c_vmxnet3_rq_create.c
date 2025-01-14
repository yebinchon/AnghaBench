
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; void* base; int basePA; } ;
struct TYPE_5__ {size_t desc_size; int * base; int basePA; } ;
struct vmxnet3_rx_queue {TYPE_4__* rx_ring; struct vmxnet3_rx_buf_info** buf_info; int buf_info_pa; TYPE_2__ comp_ring; TYPE_1__ data_ring; } ;
struct vmxnet3_rx_buf_info {int dummy; } ;
struct vmxnet3_adapter {int rxdataring_enabled; TYPE_3__* pdev; int netdev; } ;
struct Vmxnet3_RxDesc {int dummy; } ;
struct Vmxnet3_RxCompDesc {int dummy; } ;
struct TYPE_8__ {int size; void* base; int basePA; } ;
struct TYPE_7__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int *,size_t,int *,int ) ;
 int netdev_err (int ,char*,...) ;
 int vmxnet3_rq_destroy (struct vmxnet3_rx_queue*,struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_rq_create(struct vmxnet3_rx_queue *rq, struct vmxnet3_adapter *adapter)
{
 int i;
 size_t sz;
 struct vmxnet3_rx_buf_info *bi;

 for (i = 0; i < 2; i++) {

  sz = rq->rx_ring[i].size * sizeof(struct Vmxnet3_RxDesc);
  rq->rx_ring[i].base = dma_alloc_coherent(
      &adapter->pdev->dev, sz,
      &rq->rx_ring[i].basePA,
      GFP_KERNEL);
  if (!rq->rx_ring[i].base) {
   netdev_err(adapter->netdev,
       "failed to allocate rx ring %d\n", i);
   goto err;
  }
 }

 if ((adapter->rxdataring_enabled) && (rq->data_ring.desc_size != 0)) {
  sz = rq->rx_ring[0].size * rq->data_ring.desc_size;
  rq->data_ring.base =
   dma_alloc_coherent(&adapter->pdev->dev, sz,
        &rq->data_ring.basePA,
        GFP_KERNEL);
  if (!rq->data_ring.base) {
   netdev_err(adapter->netdev,
       "rx data ring will be disabled\n");
   adapter->rxdataring_enabled = 0;
  }
 } else {
  rq->data_ring.base = ((void*)0);
  rq->data_ring.desc_size = 0;
 }

 sz = rq->comp_ring.size * sizeof(struct Vmxnet3_RxCompDesc);
 rq->comp_ring.base = dma_alloc_coherent(&adapter->pdev->dev, sz,
      &rq->comp_ring.basePA,
      GFP_KERNEL);
 if (!rq->comp_ring.base) {
  netdev_err(adapter->netdev, "failed to allocate rx comp ring\n");
  goto err;
 }

 sz = sizeof(struct vmxnet3_rx_buf_info) * (rq->rx_ring[0].size +
         rq->rx_ring[1].size);
 bi = dma_alloc_coherent(&adapter->pdev->dev, sz, &rq->buf_info_pa,
    GFP_KERNEL);
 if (!bi)
  goto err;

 rq->buf_info[0] = bi;
 rq->buf_info[1] = bi + rq->rx_ring[0].size;

 return 0;

err:
 vmxnet3_rq_destroy(rq, adapter);
 return -ENOMEM;
}
