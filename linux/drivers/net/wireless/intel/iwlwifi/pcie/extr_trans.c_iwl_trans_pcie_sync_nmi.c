
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans_pcie {scalar_t__ msix_enabled; } ;
struct iwl_trans {int status; } ;


 int CSR_INT ;
 int CSR_INT_BIT_SW_ERR ;
 int CSR_MSIX_HW_INT_CAUSES_AD ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 unsigned long IWL_TRANS_NMI_TIMEOUT ;
 int MSIX_HW_INT_CAUSES_REG_SW_ERR ;
 int STATUS_INT_ENABLED ;
 int iwl_disable_interrupts (struct iwl_trans*) ;
 int iwl_enable_interrupts (struct iwl_trans*) ;
 int iwl_force_nmi (struct iwl_trans*) ;
 int iwl_read32 (struct iwl_trans*,int) ;
 int iwl_trans_fw_error (struct iwl_trans*) ;
 int iwl_write32 (struct iwl_trans*,int,int) ;
 unsigned long jiffies ;
 int mdelay (int) ;
 int test_bit (int ,int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

void iwl_trans_pcie_sync_nmi(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 unsigned long timeout = jiffies + IWL_TRANS_NMI_TIMEOUT;
 bool interrupts_enabled = test_bit(STATUS_INT_ENABLED, &trans->status);
 u32 inta_addr, sw_err_bit;

 if (trans_pcie->msix_enabled) {
  inta_addr = CSR_MSIX_HW_INT_CAUSES_AD;
  sw_err_bit = MSIX_HW_INT_CAUSES_REG_SW_ERR;
 } else {
  inta_addr = CSR_INT;
  sw_err_bit = CSR_INT_BIT_SW_ERR;
 }




 if (interrupts_enabled)
  iwl_disable_interrupts(trans);

 iwl_force_nmi(trans);
 while (time_after(timeout, jiffies)) {
  u32 inta_hw = iwl_read32(trans, inta_addr);


  if (inta_hw & sw_err_bit) {

   iwl_write32(trans, inta_addr, inta_hw & sw_err_bit);
   break;
  }

  mdelay(1);
 }





 if (interrupts_enabled)
  iwl_enable_interrupts(trans);

 iwl_trans_fw_error(trans);
}
