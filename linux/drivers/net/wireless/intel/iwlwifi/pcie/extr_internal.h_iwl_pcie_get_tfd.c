
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_txq {void* tfds; } ;
struct iwl_trans_pcie {int tfd_size; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ use_tfh; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_pcie_get_cmd_index (struct iwl_txq*,int) ;

__attribute__((used)) static inline void *iwl_pcie_get_tfd(struct iwl_trans *trans,
         struct iwl_txq *txq, int idx)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 if (trans->trans_cfg->use_tfh)
  idx = iwl_pcie_get_cmd_index(txq, idx);

 return txq->tfds + trans_pcie->tfd_size * idx;
}
