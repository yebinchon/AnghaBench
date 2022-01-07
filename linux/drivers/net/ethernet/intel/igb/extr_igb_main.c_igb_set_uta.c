
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int uta_reg_count; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int vfs_allocated_count; struct e1000_hw hw; } ;


 int E1000_UTA ;
 int array_wr32 (int ,int,int ) ;

__attribute__((used)) static void igb_set_uta(struct igb_adapter *adapter, bool set)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 uta = set ? ~0 : 0;
 int i;


 if (!adapter->vfs_allocated_count)
  return;

 for (i = hw->mac.uta_reg_count; i--;)
  array_wr32(E1000_UTA, i, uta);
}
