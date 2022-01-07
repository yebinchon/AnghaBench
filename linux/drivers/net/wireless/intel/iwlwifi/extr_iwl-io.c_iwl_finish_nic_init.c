
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {int dummy; } ;
struct iwl_cfg_trans_params {scalar_t__ device_family; scalar_t__ bisr_workaround; TYPE_1__* csr; } ;
struct TYPE_2__ {int flag_mac_clock_ready; int flag_init_done; } ;


 int BIT (int ) ;
 int CSR_GP_CNTRL ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 scalar_t__ IWL_DEVICE_FAMILY_8000 ;
 int iwl_poll_bit (struct iwl_trans*,int ,int ,int ,int) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int mdelay (int) ;
 int udelay (int) ;

int iwl_finish_nic_init(struct iwl_trans *trans,
   const struct iwl_cfg_trans_params *cfg_trans)
{
 int err;

 if (cfg_trans->bisr_workaround) {

  mdelay(2);
 }





 iwl_set_bit(trans, CSR_GP_CNTRL,
      BIT(cfg_trans->csr->flag_init_done));

 if (cfg_trans->device_family == IWL_DEVICE_FAMILY_8000)
  udelay(2);






 err = iwl_poll_bit(trans, CSR_GP_CNTRL,
      BIT(cfg_trans->csr->flag_mac_clock_ready),
      BIT(cfg_trans->csr->flag_mac_clock_ready),
      25000);
 if (err < 0)
  IWL_DEBUG_INFO(trans, "Failed to wake NIC\n");

 if (cfg_trans->bisr_workaround) {

  udelay(200);
 }

 return err < 0 ? err : 0;
}
