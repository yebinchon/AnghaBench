
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;
struct igc_adapter {int eims_enable_mask; scalar_t__ msix_entries; struct igc_hw hw; } ;


 int IGC_EIAC ;
 int IGC_EIAM ;
 int IGC_EIMS ;
 int IGC_IAM ;
 int IGC_IMS ;
 int IGC_IMS_DOUTSYNC ;
 int IGC_IMS_DRSTA ;
 int IGC_IMS_LSC ;
 int IMS_ENABLE_MASK ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igc_irq_enable(struct igc_adapter *adapter)
{
 struct igc_hw *hw = &adapter->hw;

 if (adapter->msix_entries) {
  u32 ims = IGC_IMS_LSC | IGC_IMS_DOUTSYNC | IGC_IMS_DRSTA;
  u32 regval = rd32(IGC_EIAC);

  wr32(IGC_EIAC, regval | adapter->eims_enable_mask);
  regval = rd32(IGC_EIAM);
  wr32(IGC_EIAM, regval | adapter->eims_enable_mask);
  wr32(IGC_EIMS, adapter->eims_enable_mask);
  wr32(IGC_IMS, ims);
 } else {
  wr32(IGC_IMS, IMS_ENABLE_MASK | IGC_IMS_DRSTA);
  wr32(IGC_IAM, IMS_ENABLE_MASK | IGC_IMS_DRSTA);
 }
}
