
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ibmveth_adapter {int napi; TYPE_1__* vdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int unit_address; } ;


 int BUG_ON (int) ;
 unsigned long H_SUCCESS ;
 int IRQ_HANDLED ;
 int VIO_IRQ_DISABLE ;
 int __napi_schedule (int *) ;
 unsigned long h_vio_signal (int ,int ) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct ibmveth_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static irqreturn_t ibmveth_interrupt(int irq, void *dev_instance)
{
 struct net_device *netdev = dev_instance;
 struct ibmveth_adapter *adapter = netdev_priv(netdev);
 unsigned long lpar_rc;

 if (napi_schedule_prep(&adapter->napi)) {
  lpar_rc = h_vio_signal(adapter->vdev->unit_address,
           VIO_IRQ_DISABLE);
  BUG_ON(lpar_rc != H_SUCCESS);
  __napi_schedule(&adapter->napi);
 }
 return IRQ_HANDLED;
}
