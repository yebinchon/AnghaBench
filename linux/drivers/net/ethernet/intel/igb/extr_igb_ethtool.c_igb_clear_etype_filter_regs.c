
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int* etype_bitmap; struct e1000_hw hw; } ;


 int E1000_ETQF (size_t) ;
 int E1000_ETQF_FILTER_ENABLE ;
 int E1000_ETQF_QUEUE_ENABLE ;
 int E1000_ETQF_QUEUE_MASK ;
 int rd32 (int ) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static void igb_clear_etype_filter_regs(struct igb_adapter *adapter,
     u16 reg_index)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 etqf = rd32(E1000_ETQF(reg_index));

 etqf &= ~E1000_ETQF_QUEUE_ENABLE;
 etqf &= ~E1000_ETQF_QUEUE_MASK;
 etqf &= ~E1000_ETQF_FILTER_ENABLE;

 wr32(E1000_ETQF(reg_index), etqf);

 adapter->etype_bitmap[reg_index] = 0;
}
