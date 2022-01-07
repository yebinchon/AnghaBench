
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int irq; } ;
struct TYPE_5__ {int queue_dma; int queue_addr; int queue_len; } ;
struct ibmveth_adapter {int bounce_buffer; TYPE_3__* netdev; int bounce_buffer_dma; TYPE_2__* vdev; TYPE_4__* rx_buff_pool; TYPE_1__ rx_queue; scalar_t__ filter_list_addr; int filter_list_dma; scalar_t__ buffer_list_addr; int buffer_list_dma; int pool_config; int napi; } ;
struct device {int dummy; } ;
struct TYPE_8__ {scalar_t__ active; } ;
struct TYPE_7__ {int mtu; } ;
struct TYPE_6__ {struct device dev; int unit_address; } ;


 int DMA_BIDIRECTIONAL ;
 long H_BUSY ;
 scalar_t__ H_IS_LONG_BUSY (long) ;
 long H_SUCCESS ;
 int IBMVETH_BUFF_OH ;
 int IBMVETH_NUM_BUFF_POOLS ;
 int VIO_IRQ_DISABLE ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int free_irq (int ,struct net_device*) ;
 int free_page (unsigned long) ;
 long h_free_logical_lan (int ) ;
 int h_vio_signal (int ,int ) ;
 int ibmveth_free_buffer_pool (struct ibmveth_adapter*,TYPE_4__*) ;
 int ibmveth_update_rx_no_buffer (struct ibmveth_adapter*) ;
 int kfree (int ) ;
 int napi_disable (int *) ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_err (struct net_device*,char*,long) ;
 struct ibmveth_adapter* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int ibmveth_close(struct net_device *netdev)
{
 struct ibmveth_adapter *adapter = netdev_priv(netdev);
 struct device *dev = &adapter->vdev->dev;
 long lpar_rc;
 int i;

 netdev_dbg(netdev, "close starting\n");

 napi_disable(&adapter->napi);

 if (!adapter->pool_config)
  netif_stop_queue(netdev);

 h_vio_signal(adapter->vdev->unit_address, VIO_IRQ_DISABLE);

 do {
  lpar_rc = h_free_logical_lan(adapter->vdev->unit_address);
 } while (H_IS_LONG_BUSY(lpar_rc) || (lpar_rc == H_BUSY));

 if (lpar_rc != H_SUCCESS) {
  netdev_err(netdev, "h_free_logical_lan failed with %lx, "
      "continuing with close\n", lpar_rc);
 }

 free_irq(netdev->irq, netdev);

 ibmveth_update_rx_no_buffer(adapter);

 dma_unmap_single(dev, adapter->buffer_list_dma, 4096,
    DMA_BIDIRECTIONAL);
 free_page((unsigned long)adapter->buffer_list_addr);

 dma_unmap_single(dev, adapter->filter_list_dma, 4096,
    DMA_BIDIRECTIONAL);
 free_page((unsigned long)adapter->filter_list_addr);

 dma_free_coherent(dev, adapter->rx_queue.queue_len,
     adapter->rx_queue.queue_addr,
     adapter->rx_queue.queue_dma);

 for (i = 0; i < IBMVETH_NUM_BUFF_POOLS; i++)
  if (adapter->rx_buff_pool[i].active)
   ibmveth_free_buffer_pool(adapter,
       &adapter->rx_buff_pool[i]);

 dma_unmap_single(&adapter->vdev->dev, adapter->bounce_buffer_dma,
    adapter->netdev->mtu + IBMVETH_BUFF_OH,
    DMA_BIDIRECTIONAL);
 kfree(adapter->bounce_buffer);

 netdev_dbg(netdev, "close complete\n");

 return 0;
}
