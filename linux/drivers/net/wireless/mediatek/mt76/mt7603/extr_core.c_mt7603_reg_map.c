
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mt7603_dev {int mt76; TYPE_1__* bus_ops; } ;
struct TYPE_2__ {int (* wr ) (int *,int ,int) ;} ;


 int MT_MCU_PCIE_REMAP_2 ;
 int MT_MCU_PCIE_REMAP_2_BASE ;
 int MT_MCU_PCIE_REMAP_2_OFFSET ;
 int MT_PCIE_REMAP_BASE_2 ;
 int stub1 (int *,int ,int) ;

u32 mt7603_reg_map(struct mt7603_dev *dev, u32 addr)
{
 u32 base = addr & MT_MCU_PCIE_REMAP_2_BASE;
 u32 offset = addr & MT_MCU_PCIE_REMAP_2_OFFSET;

 dev->bus_ops->wr(&dev->mt76, MT_MCU_PCIE_REMAP_2, base);

 return MT_PCIE_REMAP_BASE_2 + offset;
}
