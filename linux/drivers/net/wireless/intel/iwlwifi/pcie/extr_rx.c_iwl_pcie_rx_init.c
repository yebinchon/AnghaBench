
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iwl_trans_pcie {TYPE_2__* rxq; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {scalar_t__ mq_rx_supported; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int _iwl_pcie_rx_init (struct iwl_trans*) ;
 int iwl_pcie_rx_hw_init (struct iwl_trans*,TYPE_2__*) ;
 int iwl_pcie_rx_mq_hw_init (struct iwl_trans*) ;
 int iwl_pcie_rxq_inc_wr_ptr (struct iwl_trans*,TYPE_2__*) ;
 int iwl_pcie_rxq_restock (struct iwl_trans*,TYPE_2__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int iwl_pcie_rx_init(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int ret = _iwl_pcie_rx_init(trans);

 if (ret)
  return ret;

 if (trans->trans_cfg->mq_rx_supported)
  iwl_pcie_rx_mq_hw_init(trans);
 else
  iwl_pcie_rx_hw_init(trans, trans_pcie->rxq);

 iwl_pcie_rxq_restock(trans, trans_pcie->rxq);

 spin_lock(&trans_pcie->rxq->lock);
 iwl_pcie_rxq_inc_wr_ptr(trans, trans_pcie->rxq);
 spin_unlock(&trans_pcie->rxq->lock);

 return 0;
}
