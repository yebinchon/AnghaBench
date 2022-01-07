
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int use_ict; int irq_lock; } ;
struct iwl_trans {int dummy; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void iwl_pcie_disable_ict(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 spin_lock(&trans_pcie->irq_lock);
 trans_pcie->use_ict = 0;
 spin_unlock(&trans_pcie->irq_lock);
}
