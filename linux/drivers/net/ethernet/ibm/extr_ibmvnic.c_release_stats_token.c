
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvnic_statistics {int dummy; } ;
struct ibmvnic_adapter {int stats_token; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_single (struct device*,int ,int,int ) ;

__attribute__((used)) static void release_stats_token(struct ibmvnic_adapter *adapter)
{
 struct device *dev = &adapter->vdev->dev;

 if (!adapter->stats_token)
  return;

 dma_unmap_single(dev, adapter->stats_token,
    sizeof(struct ibmvnic_statistics),
    DMA_FROM_DEVICE);
 adapter->stats_token = 0;
}
