
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {scalar_t__ hmc_obj; } ;
struct i40e_hw {TYPE_2__ hmc; } ;
struct i40e_pf {size_t num_alloc_vsi; TYPE_3__* pdev; struct i40e_hw hw; TYPE_1__** vsi; int state; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {scalar_t__ seid; } ;


 int __I40E_RESET_INTR_RECEIVED ;
 int __I40E_RESET_RECOVERY_PENDING ;
 int clear_bit (int ,int ) ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*,scalar_t__) ;
 scalar_t__ i40e_check_asq_alive (struct i40e_hw*) ;
 int i40e_pf_quiesce_all_vsi (struct i40e_pf*) ;
 int i40e_ptp_save_hw_time (struct i40e_pf*) ;
 int i40e_shutdown_adminq (struct i40e_hw*) ;
 scalar_t__ i40e_shutdown_lan_hmc (struct i40e_hw*) ;
 int i40e_vc_notify_reset (struct i40e_pf*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 scalar_t__ test_and_set_bit (int ,int ) ;

__attribute__((used)) static void i40e_prep_for_reset(struct i40e_pf *pf, bool lock_acquired)
{
 struct i40e_hw *hw = &pf->hw;
 i40e_status ret = 0;
 u32 v;

 clear_bit(__I40E_RESET_INTR_RECEIVED, pf->state);
 if (test_and_set_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
  return;
 if (i40e_check_asq_alive(&pf->hw))
  i40e_vc_notify_reset(pf);

 dev_dbg(&pf->pdev->dev, "Tearing down internal switch for reset\n");



 if (!lock_acquired)
  rtnl_lock();
 i40e_pf_quiesce_all_vsi(pf);
 if (!lock_acquired)
  rtnl_unlock();

 for (v = 0; v < pf->num_alloc_vsi; v++) {
  if (pf->vsi[v])
   pf->vsi[v]->seid = 0;
 }

 i40e_shutdown_adminq(&pf->hw);


 if (hw->hmc.hmc_obj) {
  ret = i40e_shutdown_lan_hmc(hw);
  if (ret)
   dev_warn(&pf->pdev->dev,
     "shutdown_lan_hmc failed: %d\n", ret);
 }




 i40e_ptp_save_hw_time(pf);
}
