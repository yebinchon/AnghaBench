
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct iwl_tt_mgmt {scalar_t__ state; int ct_kill_toggle; int ct_kill_exit_tm; } ;
struct iwl_priv {struct iwl_tt_mgmt thermal_throttle; int trans; int status; } ;
struct TYPE_2__ {int ct_kill_exit_tm; } ;


 int CSR_UCODE_DRV_GP1 ;
 int CSR_UCODE_DRV_GP1_CLR ;
 int CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT ;
 int CSR_UCODE_DRV_GP1_SET ;
 int CT_KILL_EXIT_DURATION ;
 int HZ ;
 int IWL_DEBUG_TEMP (struct iwl_priv*,char*) ;
 scalar_t__ IWL_TI_CT_KILL ;
 int STATUS_EXIT_PENDING ;
 struct iwl_priv* from_timer (int ,struct timer_list*,int ) ;
 int iwl_read32 (int ,int ) ;
 scalar_t__ iwl_trans_grab_nic_access (int ,unsigned long*) ;
 int iwl_trans_release_nic_access (int ,unsigned long*) ;
 int iwl_write32 (int ,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct iwl_priv* priv ;
 scalar_t__ test_bit (int ,int *) ;
 TYPE_1__ thermal_throttle ;

__attribute__((used)) static void iwl_tt_check_exit_ct_kill(struct timer_list *t)
{
 struct iwl_priv *priv = from_timer(priv, t,
        thermal_throttle.ct_kill_exit_tm);
 struct iwl_tt_mgmt *tt = &priv->thermal_throttle;
 unsigned long flags;

 if (test_bit(STATUS_EXIT_PENDING, &priv->status))
  return;

 if (tt->state == IWL_TI_CT_KILL) {
  if (priv->thermal_throttle.ct_kill_toggle) {
   iwl_write32(priv->trans, CSR_UCODE_DRV_GP1_CLR,
        CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT);
   priv->thermal_throttle.ct_kill_toggle = 0;
  } else {
   iwl_write32(priv->trans, CSR_UCODE_DRV_GP1_SET,
        CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT);
   priv->thermal_throttle.ct_kill_toggle = 1;
  }
  iwl_read32(priv->trans, CSR_UCODE_DRV_GP1);
  if (iwl_trans_grab_nic_access(priv->trans, &flags))
   iwl_trans_release_nic_access(priv->trans, &flags);




  IWL_DEBUG_TEMP(priv, "schedule ct_kill exit timer\n");
  mod_timer(&priv->thermal_throttle.ct_kill_exit_tm,
     jiffies + CT_KILL_EXIT_DURATION * HZ);
 }
}
