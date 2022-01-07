
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {size_t lan_vsi; int hw_features; int flags; scalar_t__ wol_en; TYPE_1__* pdev; int state; int * vsi; int service_task; int service_timer; struct i40e_hw hw; } ;
struct TYPE_2__ {int irq; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_HW_WOL_MC_MAGIC_PKT_WAKE ;
 int I40E_PFPM_APM ;
 int I40E_PFPM_APM_APME_MASK ;
 int I40E_PFPM_WUFC ;
 int I40E_PFPM_WUFC_MAG_MASK ;
 int PCI_D3hot ;
 scalar_t__ SYSTEM_POWER_OFF ;
 int __I40E_DOWN ;
 int __I40E_RECOVERY_MODE ;
 int __I40E_SUSPENDED ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct i40e_pf*) ;
 int i40e_clear_interrupt_scheme (struct i40e_pf*) ;
 int i40e_cloud_filter_exit (struct i40e_pf*) ;
 int i40e_enable_mc_magic_wake (struct i40e_pf*) ;
 int i40e_fdir_teardown (struct i40e_pf*) ;
 int i40e_notify_client_of_netdev_close (int ,int) ;
 int i40e_prep_for_reset (struct i40e_pf*,int) ;
 struct i40e_pf* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_wake_from_d3 (struct pci_dev*,scalar_t__) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int ) ;
 scalar_t__ system_state ;
 scalar_t__ test_bit (int ,int ) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void i40e_shutdown(struct pci_dev *pdev)
{
 struct i40e_pf *pf = pci_get_drvdata(pdev);
 struct i40e_hw *hw = &pf->hw;

 set_bit(__I40E_SUSPENDED, pf->state);
 set_bit(__I40E_DOWN, pf->state);

 del_timer_sync(&pf->service_timer);
 cancel_work_sync(&pf->service_task);
 i40e_cloud_filter_exit(pf);
 i40e_fdir_teardown(pf);




 i40e_notify_client_of_netdev_close(pf->vsi[pf->lan_vsi], 0);

 if (pf->wol_en && (pf->hw_features & I40E_HW_WOL_MC_MAGIC_PKT_WAKE))
  i40e_enable_mc_magic_wake(pf);

 i40e_prep_for_reset(pf, 0);

 wr32(hw, I40E_PFPM_APM,
      (pf->wol_en ? I40E_PFPM_APM_APME_MASK : 0));
 wr32(hw, I40E_PFPM_WUFC,
      (pf->wol_en ? I40E_PFPM_WUFC_MAG_MASK : 0));


 if (test_bit(__I40E_RECOVERY_MODE, pf->state) &&
     !(pf->flags & I40E_FLAG_MSIX_ENABLED))
  free_irq(pf->pdev->irq, pf);





 rtnl_lock();
 i40e_clear_interrupt_scheme(pf);
 rtnl_unlock();

 if (system_state == SYSTEM_POWER_OFF) {
  pci_wake_from_d3(pdev, pf->wol_en);
  pci_set_power_state(pdev, PCI_D3hot);
 }
}
