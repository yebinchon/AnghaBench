
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvnic_statistics {int dummy; } ;
struct ibmvnic_adapter {int netdev; int stats_token; int stats; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int dev_err (struct device*,char*) ;
 int dma_map_single (struct device*,int *,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int netdev_dbg (int ,char*,int ) ;

__attribute__((used)) static int init_stats_token(struct ibmvnic_adapter *adapter)
{
 struct device *dev = &adapter->vdev->dev;
 dma_addr_t stok;

 stok = dma_map_single(dev, &adapter->stats,
         sizeof(struct ibmvnic_statistics),
         DMA_FROM_DEVICE);
 if (dma_mapping_error(dev, stok)) {
  dev_err(dev, "Couldn't map stats buffer\n");
  return -1;
 }

 adapter->stats_token = stok;
 netdev_dbg(adapter->netdev, "Stats token initialized (%llx)\n", stok);
 return 0;
}
