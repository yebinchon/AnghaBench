
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct iwl_rxq {int dummy; } ;
struct TYPE_2__ {scalar_t__ mq_rx_supported; } ;


 int iwl_pcie_rxmq_restock (struct iwl_trans*,struct iwl_rxq*) ;
 int iwl_pcie_rxsq_restock (struct iwl_trans*,struct iwl_rxq*) ;

__attribute__((used)) static
void iwl_pcie_rxq_restock(struct iwl_trans *trans, struct iwl_rxq *rxq)
{
 if (trans->trans_cfg->mq_rx_supported)
  iwl_pcie_rxmq_restock(trans, rxq);
 else
  iwl_pcie_rxsq_restock(trans, rxq);
}
