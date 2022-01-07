
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_gbe_hw {TYPE_1__* reg; } ;
struct pch_gbe_adapter {int netdev; int irq_sem; struct pch_gbe_hw hw; } ;
struct TYPE_2__ {int INT_EN; int INT_ST; } ;


 int PCH_GBE_INT_ENABLE_MASK ;
 int atomic_dec_and_test (int *) ;
 int ioread32 (int *) ;
 int iowrite32 (int ,int *) ;
 scalar_t__ likely (int ) ;
 int netdev_dbg (int ,char*,int ) ;

__attribute__((used)) static void pch_gbe_irq_enable(struct pch_gbe_adapter *adapter)
{
 struct pch_gbe_hw *hw = &adapter->hw;

 if (likely(atomic_dec_and_test(&adapter->irq_sem)))
  iowrite32(PCH_GBE_INT_ENABLE_MASK, &hw->reg->INT_EN);
 ioread32(&hw->reg->INT_ST);
 netdev_dbg(adapter->netdev, "INT_EN reg : 0x%08x\n",
     ioread32(&hw->reg->INT_EN));
}
