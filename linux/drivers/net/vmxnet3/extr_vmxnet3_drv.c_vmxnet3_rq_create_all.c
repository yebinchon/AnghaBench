
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_adapter {int num_rx_queues; int rxdataring_enabled; TYPE_1__* netdev; int * rx_queue; } ;
struct TYPE_2__ {int name; int dev; } ;


 int VMXNET3_VERSION_GE_3 (struct vmxnet3_adapter*) ;
 int dev_err (int *,char*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int vmxnet3_rq_create (int *,struct vmxnet3_adapter*) ;
 int vmxnet3_rq_destroy_all (struct vmxnet3_adapter*) ;
 int vmxnet3_rq_destroy_all_rxdataring (struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_rq_create_all(struct vmxnet3_adapter *adapter)
{
 int i, err = 0;

 adapter->rxdataring_enabled = VMXNET3_VERSION_GE_3(adapter);

 for (i = 0; i < adapter->num_rx_queues; i++) {
  err = vmxnet3_rq_create(&adapter->rx_queue[i], adapter);
  if (unlikely(err)) {
   dev_err(&adapter->netdev->dev,
    "%s: failed to create rx queue%i\n",
    adapter->netdev->name, i);
   goto err_out;
  }
 }

 if (!adapter->rxdataring_enabled)
  vmxnet3_rq_destroy_all_rxdataring(adapter);

 return err;
err_out:
 vmxnet3_rq_destroy_all(adapter);
 return err;

}
