
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
struct iwl_trans_pcie_removal {int work; int pdev; } ;
struct iwl_trans_pcie {int reg_lock; scalar_t__ cmd_hold_nic_awake; } ;
struct iwl_trans {int dev; int status; TYPE_2__* trans_cfg; } ;
struct TYPE_6__ {scalar_t__ remove_when_gone; } ;
struct TYPE_5__ {scalar_t__ device_family; TYPE_1__* csr; } ;
struct TYPE_4__ {int flag_mac_clock_ready; int flag_val_mac_access_en; int flag_mac_access_req; } ;


 int BIT (int ) ;
 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP ;
 int CSR_RESET ;
 int CSR_RESET_REG_FLAG_FORCE_NMI ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IWL_DEVICE_FAMILY_8000 ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_TRANS_DEAD ;
 int THIS_MODULE ;
 int WARN_ONCE (int,char*,unsigned int) ;
 int __iwl_trans_pcie_set_bit (struct iwl_trans*,int ,int) ;
 int __release (int *) ;
 int iwl_poll_bit (struct iwl_trans*,int ,int,int,int) ;
 unsigned int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_trans_pcie_dump_regs (struct iwl_trans*) ;
 int iwl_trans_pcie_removal_wk ;
 int iwl_write32 (struct iwl_trans*,int ,int ) ;
 TYPE_3__ iwlwifi_mod_params ;
 struct iwl_trans_pcie_removal* kzalloc (int,int ) ;
 int module_put (int ) ;
 int pci_dev_get (int ) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int to_pci_dev (int ) ;
 int try_module_get (int ) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool iwl_trans_pcie_grab_nic_access(struct iwl_trans *trans,
        unsigned long *flags)
{
 int ret;
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 spin_lock_irqsave(&trans_pcie->reg_lock, *flags);

 if (trans_pcie->cmd_hold_nic_awake)
  goto out;


 __iwl_trans_pcie_set_bit(trans, CSR_GP_CNTRL,
     BIT(trans->trans_cfg->csr->flag_mac_access_req));
 if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_8000)
  udelay(2);
 ret = iwl_poll_bit(trans, CSR_GP_CNTRL,
      BIT(trans->trans_cfg->csr->flag_val_mac_access_en),
      (BIT(trans->trans_cfg->csr->flag_mac_clock_ready) |
       CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP), 15000);
 if (unlikely(ret < 0)) {
  u32 cntrl = iwl_read32(trans, CSR_GP_CNTRL);

  WARN_ONCE(1,
     "Timeout waiting for hardware access (CSR_GP_CNTRL 0x%08x)\n",
     cntrl);

  iwl_trans_pcie_dump_regs(trans);

  if (iwlwifi_mod_params.remove_when_gone && cntrl == ~0U) {
   struct iwl_trans_pcie_removal *removal;

   if (test_bit(STATUS_TRANS_DEAD, &trans->status))
    goto err;

   IWL_ERR(trans, "Device gone - scheduling removal!\n");







   if (!try_module_get(THIS_MODULE)) {
    IWL_ERR(trans,
     "Module is being unloaded - abort\n");
    goto err;
   }

   removal = kzalloc(sizeof(*removal), GFP_ATOMIC);
   if (!removal) {
    module_put(THIS_MODULE);
    goto err;
   }




   set_bit(STATUS_TRANS_DEAD, &trans->status);

   removal->pdev = to_pci_dev(trans->dev);
   INIT_WORK(&removal->work, iwl_trans_pcie_removal_wk);
   pci_dev_get(removal->pdev);
   schedule_work(&removal->work);
  } else {
   iwl_write32(trans, CSR_RESET,
        CSR_RESET_REG_FLAG_FORCE_NMI);
  }

err:
  spin_unlock_irqrestore(&trans_pcie->reg_lock, *flags);
  return 0;
 }

out:




 __release(&trans_pcie->reg_lock);
 return 1;
}
