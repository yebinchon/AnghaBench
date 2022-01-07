
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ mask_mode; } ;
struct vmxnet3_adapter {TYPE_2__* rx_queue; TYPE_1__ intr; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int napi; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ VMXNET3_IMM_ACTIVE ;
 scalar_t__ VMXNET3_IT_INTX ;
 scalar_t__ VMXNET3_READ_BAR1_REG (struct vmxnet3_adapter*,int ) ;
 int VMXNET3_REG_ICR ;
 int napi_schedule (int *) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;
 int vmxnet3_disable_all_intrs (struct vmxnet3_adapter*) ;

__attribute__((used)) static irqreturn_t
vmxnet3_intr(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct vmxnet3_adapter *adapter = netdev_priv(dev);

 if (adapter->intr.type == VMXNET3_IT_INTX) {
  u32 icr = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_ICR);
  if (unlikely(icr == 0))

   return IRQ_NONE;
 }



 if (adapter->intr.mask_mode == VMXNET3_IMM_ACTIVE)
  vmxnet3_disable_all_intrs(adapter);

 napi_schedule(&adapter->rx_queue[0].napi);

 return IRQ_HANDLED;
}
