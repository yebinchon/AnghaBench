
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* csr; } ;
struct TYPE_3__ {int flag_master_dis; int addr_sw_reset; int flag_stop_master; } ;


 int BIT (int ) ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 int IWL_WARN (struct iwl_trans*,char*) ;
 int iwl_poll_bit (struct iwl_trans*,int ,int ,int ,int) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;

void iwl_pcie_apm_stop_master(struct iwl_trans *trans)
{
 int ret;


 iwl_set_bit(trans, trans->trans_cfg->csr->addr_sw_reset,
      BIT(trans->trans_cfg->csr->flag_stop_master));

 ret = iwl_poll_bit(trans, trans->trans_cfg->csr->addr_sw_reset,
      BIT(trans->trans_cfg->csr->flag_master_dis),
      BIT(trans->trans_cfg->csr->flag_master_dis), 100);
 if (ret < 0)
  IWL_WARN(trans, "Master Disable Timed Out, 100 usec\n");

 IWL_DEBUG_INFO(trans, "stop master\n");
}
