
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct igc_hw {int dummy; } ;
struct igc_adapter {int eims_enable_mask; int num_q_vectors; TYPE_2__* pdev; TYPE_1__* msix_entries; struct igc_hw hw; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int vector; } ;


 int IGC_EIAC ;
 int IGC_EIAM ;
 int IGC_EIMC ;
 int IGC_IAM ;
 int IGC_IMC ;
 int rd32 (int ) ;
 int synchronize_irq (int ) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static void igc_irq_disable(struct igc_adapter *adapter)
{
 struct igc_hw *hw = &adapter->hw;

 if (adapter->msix_entries) {
  u32 regval = rd32(IGC_EIAM);

  wr32(IGC_EIAM, regval & ~adapter->eims_enable_mask);
  wr32(IGC_EIMC, adapter->eims_enable_mask);
  regval = rd32(IGC_EIAC);
  wr32(IGC_EIAC, regval & ~adapter->eims_enable_mask);
 }

 wr32(IGC_IAM, 0);
 wr32(IGC_IMC, ~0);
 wrfl();

 if (adapter->msix_entries) {
  int vector = 0, i;

  synchronize_irq(adapter->msix_entries[vector++].vector);

  for (i = 0; i < adapter->num_q_vectors; i++)
   synchronize_irq(adapter->msix_entries[vector++].vector);
 } else {
  synchronize_irq(adapter->pdev->irq);
 }
}
