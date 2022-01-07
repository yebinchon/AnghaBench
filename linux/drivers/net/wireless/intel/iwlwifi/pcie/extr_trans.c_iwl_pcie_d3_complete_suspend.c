
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* csr; } ;
struct TYPE_3__ {int flag_init_done; int flag_mac_access_req; } ;


 int BIT (int ) ;
 int CSR_GP_CNTRL ;
 int iwl_clear_bit (struct iwl_trans*,int ,int ) ;
 int iwl_disable_interrupts (struct iwl_trans*) ;
 int iwl_pcie_disable_ict (struct iwl_trans*) ;
 int iwl_pcie_set_pwr (struct iwl_trans*,int) ;
 int iwl_pcie_synchronize_irqs (struct iwl_trans*) ;
 int iwl_trans_pcie_tx_reset (struct iwl_trans*) ;

void iwl_pcie_d3_complete_suspend(struct iwl_trans *trans,
      bool test, bool reset)
{
 iwl_disable_interrupts(trans);





 if (test)
  return;

 iwl_pcie_disable_ict(trans);

 iwl_pcie_synchronize_irqs(trans);

 iwl_clear_bit(trans, CSR_GP_CNTRL,
        BIT(trans->trans_cfg->csr->flag_mac_access_req));
 iwl_clear_bit(trans, CSR_GP_CNTRL,
        BIT(trans->trans_cfg->csr->flag_init_done));

 if (reset) {





  iwl_trans_pcie_tx_reset(trans);
 }

 iwl_pcie_set_pwr(trans, 1);
}
