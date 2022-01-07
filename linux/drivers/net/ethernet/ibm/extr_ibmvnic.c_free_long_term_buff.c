
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvnic_long_term_buff {int addr; int buff; int size; int map_id; } ;
struct ibmvnic_adapter {scalar_t__ reset_reason; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ VNIC_RESET_FAILOVER ;
 scalar_t__ VNIC_RESET_MOBILITY ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int send_request_unmap (struct ibmvnic_adapter*,int ) ;

__attribute__((used)) static void free_long_term_buff(struct ibmvnic_adapter *adapter,
    struct ibmvnic_long_term_buff *ltb)
{
 struct device *dev = &adapter->vdev->dev;

 if (!ltb->buff)
  return;

 if (adapter->reset_reason != VNIC_RESET_FAILOVER &&
     adapter->reset_reason != VNIC_RESET_MOBILITY)
  send_request_unmap(adapter, ltb->map_id);
 dma_free_coherent(dev, ltb->size, ltb->buff, ltb->addr);
}
