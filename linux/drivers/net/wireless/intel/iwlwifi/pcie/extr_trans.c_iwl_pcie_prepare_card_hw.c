
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int CSR_DBG_LINK_PWR_MGMT_REG ;
 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_PREPARE ;
 int CSR_RESET_LINK_PWR_MGMT_DISABLED ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 int iwl_pcie_set_hw_ready (struct iwl_trans*) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

int iwl_pcie_prepare_card_hw(struct iwl_trans *trans)
{
 int ret;
 int t = 0;
 int iter;

 IWL_DEBUG_INFO(trans, "iwl_trans_prepare_card_hw enter\n");

 ret = iwl_pcie_set_hw_ready(trans);

 if (ret >= 0)
  return 0;

 iwl_set_bit(trans, CSR_DBG_LINK_PWR_MGMT_REG,
      CSR_RESET_LINK_PWR_MGMT_DISABLED);
 usleep_range(1000, 2000);

 for (iter = 0; iter < 10; iter++) {

  iwl_set_bit(trans, CSR_HW_IF_CONFIG_REG,
       CSR_HW_IF_CONFIG_REG_PREPARE);

  do {
   ret = iwl_pcie_set_hw_ready(trans);
   if (ret >= 0)
    return 0;

   usleep_range(200, 1000);
   t += 200;
  } while (t < 150000);
  msleep(25);
 }

 IWL_ERR(trans, "Couldn't prepare the card\n");

 return ret;
}
