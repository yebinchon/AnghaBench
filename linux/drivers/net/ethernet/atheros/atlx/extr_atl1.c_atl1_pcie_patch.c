
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct atl1_adapter {TYPE_1__ hw; } ;


 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void atl1_pcie_patch(struct atl1_adapter *adapter)
{
 u32 value;


 value = 0x6500;
 iowrite32(value, adapter->hw.hw_addr + 0x12FC);

 value = ioread32(adapter->hw.hw_addr + 0x1008);
 value |= 0x8000;
 iowrite32(value, adapter->hw.hw_addr + 0x1008);
}
