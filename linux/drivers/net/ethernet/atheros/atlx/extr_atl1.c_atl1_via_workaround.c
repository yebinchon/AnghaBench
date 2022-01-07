
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct atl1_adapter {TYPE_1__ hw; } ;


 scalar_t__ PCI_COMMAND ;
 unsigned long PCI_COMMAND_INTX_DISABLE ;
 unsigned long ioread16 (scalar_t__) ;
 int iowrite32 (unsigned long,scalar_t__) ;

__attribute__((used)) static void atl1_via_workaround(struct atl1_adapter *adapter)
{
 unsigned long value;

 value = ioread16(adapter->hw.hw_addr + PCI_COMMAND);
 if (value & PCI_COMMAND_INTX_DISABLE)
  value &= ~PCI_COMMAND_INTX_DISABLE;
 iowrite32(value, adapter->hw.hw_addr + PCI_COMMAND);
}
