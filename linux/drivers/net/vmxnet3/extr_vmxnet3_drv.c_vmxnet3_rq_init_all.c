
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_adapter {int num_rx_queues; TYPE_1__* netdev; int * rx_queue; } ;
struct TYPE_2__ {int name; int dev; } ;


 int dev_err (int *,char*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int vmxnet3_rq_init (int *,struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_rq_init_all(struct vmxnet3_adapter *adapter)
{
 int i, err = 0;

 for (i = 0; i < adapter->num_rx_queues; i++) {
  err = vmxnet3_rq_init(&adapter->rx_queue[i], adapter);
  if (unlikely(err)) {
   dev_err(&adapter->netdev->dev, "%s: failed to "
    "initialize rx queue%i\n",
    adapter->netdev->name, i);
   break;
  }
 }
 return err;

}
