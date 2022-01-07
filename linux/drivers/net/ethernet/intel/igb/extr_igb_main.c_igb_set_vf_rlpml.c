
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_VMOLR (int) ;
 int E1000_VMOLR_LPE ;
 int E1000_VMOLR_RLPML_MASK ;
 int MAX_JUMBO_FRAME_SIZE ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static inline int igb_set_vf_rlpml(struct igb_adapter *adapter, int size,
       int vfn)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 vmolr;

 if (size > MAX_JUMBO_FRAME_SIZE)
  size = MAX_JUMBO_FRAME_SIZE;

 vmolr = rd32(E1000_VMOLR(vfn));
 vmolr &= ~E1000_VMOLR_RLPML_MASK;
 vmolr |= size | E1000_VMOLR_LPE;
 wr32(E1000_VMOLR(vfn), vmolr);

 return 0;
}
