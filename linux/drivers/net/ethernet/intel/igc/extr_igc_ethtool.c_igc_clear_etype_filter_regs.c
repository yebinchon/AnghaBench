
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct igc_hw {int dummy; } ;
struct igc_adapter {int* etype_bitmap; struct igc_hw hw; } ;


 int IGC_ETQF (size_t) ;
 int IGC_ETQF_FILTER_ENABLE ;
 int IGC_ETQF_QUEUE_ENABLE ;
 int IGC_ETQF_QUEUE_MASK ;
 int rd32 (int ) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static void igc_clear_etype_filter_regs(struct igc_adapter *adapter,
     u16 reg_index)
{
 struct igc_hw *hw = &adapter->hw;
 u32 etqf = rd32(IGC_ETQF(reg_index));

 etqf &= ~IGC_ETQF_QUEUE_ENABLE;
 etqf &= ~IGC_ETQF_QUEUE_MASK;
 etqf &= ~IGC_ETQF_FILTER_ENABLE;

 wr32(IGC_ETQF(reg_index), etqf);

 adapter->etype_bitmap[reg_index] = 0;
}
