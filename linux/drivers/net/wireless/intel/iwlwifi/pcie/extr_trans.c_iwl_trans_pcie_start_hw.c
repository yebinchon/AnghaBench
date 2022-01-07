
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int mutex; } ;
struct iwl_trans {int dummy; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int _iwl_trans_pcie_start_hw (struct iwl_trans*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_trans_pcie_start_hw(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int ret;

 mutex_lock(&trans_pcie->mutex);
 ret = _iwl_trans_pcie_start_hw(trans);
 mutex_unlock(&trans_pcie->mutex);

 return ret;
}
