
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {scalar_t__ shadow_ram_support; } ;


 int APMG_PS_CTRL_REG ;
 int APMG_PS_CTRL_VAL_RESET_REQ ;
 int CSR_DBG_LINK_PWR_MGMT_REG ;
 int CSR_RESET_LINK_PWR_MGMT_DISABLED ;
 int iwl_clear_bits_prph (struct iwl_trans*,int ,int ) ;
 int iwl_finish_nic_init (struct iwl_trans*,TYPE_2__*) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int iwl_set_bits_prph (struct iwl_trans*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int iwl_init_otp_access(struct iwl_trans *trans)
{
 int ret;

 ret = iwl_finish_nic_init(trans, trans->trans_cfg);
 if (ret)
  return ret;

 iwl_set_bits_prph(trans, APMG_PS_CTRL_REG,
     APMG_PS_CTRL_VAL_RESET_REQ);
 udelay(5);
 iwl_clear_bits_prph(trans, APMG_PS_CTRL_REG,
       APMG_PS_CTRL_VAL_RESET_REQ);





 if (trans->trans_cfg->base_params->shadow_ram_support)
  iwl_set_bit(trans, CSR_DBG_LINK_PWR_MGMT_REG,
       CSR_RESET_LINK_PWR_MGMT_DISABLED);

 return 0;
}
