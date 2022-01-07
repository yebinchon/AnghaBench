
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int dummy; } ;


 scalar_t__ VMXNET3_REG_IMR ;
 int VMXNET3_WRITE_BAR0_REG (struct vmxnet3_adapter*,scalar_t__,int) ;

__attribute__((used)) static void
vmxnet3_disable_intr(struct vmxnet3_adapter *adapter, unsigned intr_idx)
{
 VMXNET3_WRITE_BAR0_REG(adapter, VMXNET3_REG_IMR + intr_idx * 8, 1);
}
