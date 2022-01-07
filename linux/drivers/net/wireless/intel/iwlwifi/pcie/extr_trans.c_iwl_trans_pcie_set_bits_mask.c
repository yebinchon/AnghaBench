
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans_pcie {int reg_lock; } ;
struct iwl_trans {int dummy; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int __iwl_trans_pcie_set_bits_mask (struct iwl_trans*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iwl_trans_pcie_set_bits_mask(struct iwl_trans *trans, u32 reg,
      u32 mask, u32 value)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 unsigned long flags;

 spin_lock_irqsave(&trans_pcie->reg_lock, flags);
 __iwl_trans_pcie_set_bits_mask(trans, reg, mask, value);
 spin_unlock_irqrestore(&trans_pcie->reg_lock, flags);
}
