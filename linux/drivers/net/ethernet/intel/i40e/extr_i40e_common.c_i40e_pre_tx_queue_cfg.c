
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int base_queue; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;


 int I40E_GLLAN_TXPRE_QDIS (int) ;
 int I40E_GLLAN_TXPRE_QDIS_CLEAR_QDIS_MASK ;
 int I40E_GLLAN_TXPRE_QDIS_QINDX_MASK ;
 int I40E_GLLAN_TXPRE_QDIS_QINDX_SHIFT ;
 int I40E_GLLAN_TXPRE_QDIS_SET_QDIS_MASK ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

void i40e_pre_tx_queue_cfg(struct i40e_hw *hw, u32 queue, bool enable)
{
 u32 abs_queue_idx = hw->func_caps.base_queue + queue;
 u32 reg_block = 0;
 u32 reg_val;

 if (abs_queue_idx >= 128) {
  reg_block = abs_queue_idx / 128;
  abs_queue_idx %= 128;
 }

 reg_val = rd32(hw, I40E_GLLAN_TXPRE_QDIS(reg_block));
 reg_val &= ~I40E_GLLAN_TXPRE_QDIS_QINDX_MASK;
 reg_val |= (abs_queue_idx << I40E_GLLAN_TXPRE_QDIS_QINDX_SHIFT);

 if (enable)
  reg_val |= I40E_GLLAN_TXPRE_QDIS_CLEAR_QDIS_MASK;
 else
  reg_val |= I40E_GLLAN_TXPRE_QDIS_SET_QDIS_MASK;

 wr32(hw, I40E_GLLAN_TXPRE_QDIS(reg_block), reg_val);
}
