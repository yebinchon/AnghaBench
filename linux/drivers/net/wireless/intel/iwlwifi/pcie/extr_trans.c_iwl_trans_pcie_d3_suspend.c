
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans_pcie {int sx_complete; int sx_waitq; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_PERSIST_MODE ;
 int ETIMEDOUT ;
 int HZ ;
 scalar_t__ IWL_DEVICE_FAMILY_AX210 ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int UREG_DOORBELL_TO_ISR6 ;
 int UREG_DOORBELL_TO_ISR6_SUSPEND ;
 int iwl_pcie_d3_complete_suspend (struct iwl_trans*,int,int) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int iwl_write_umac_prph (struct iwl_trans*,int ,int ) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int iwl_trans_pcie_d3_suspend(struct iwl_trans *trans, bool test,
         bool reset)
{
 int ret;
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);




 if (!reset && trans->trans_cfg->device_family < IWL_DEVICE_FAMILY_AX210) {

  iwl_set_bit(trans, CSR_HW_IF_CONFIG_REG,
       CSR_HW_IF_CONFIG_REG_PERSIST_MODE);
 }

 if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_AX210) {
  iwl_write_umac_prph(trans, UREG_DOORBELL_TO_ISR6,
        UREG_DOORBELL_TO_ISR6_SUSPEND);

  ret = wait_event_timeout(trans_pcie->sx_waitq,
      trans_pcie->sx_complete, 2 * HZ);



  trans_pcie->sx_complete = 0;

  if (!ret) {
   IWL_ERR(trans, "Timeout entering D3\n");
   return -ETIMEDOUT;
  }
 }
 iwl_pcie_d3_complete_suspend(trans, test, reset);

 return 0;
}
