
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dev_id; } ;


 int HI_OPTION_FW_BRIDGE_SHIFT ;
 int HI_OPTION_FW_MODE_AP ;
 int HI_OPTION_FW_MODE_SHIFT ;
 int HI_OPTION_FW_SUBMODE_SHIFT ;
 int HI_OPTION_MAC_ADDR_METHOD_SHIFT ;
 int HI_OPTION_NUM_DEV_SHIFT ;
 int HTC_PROTOCOL_VERSION ;
 int ath10k_bmi_read32 (struct ath10k*,int ,int*) ;
 int ath10k_bmi_write32 (struct ath10k*,int ,int) ;
 int ath10k_err (struct ath10k*,char*,...) ;
 int hi_app_host_interest ;
 int hi_be ;
 int hi_fw_swap ;
 int hi_hci_uart_pwr_mgmt_params_ext ;
 int hi_option_flag ;

__attribute__((used)) static int ath10k_init_configure_target(struct ath10k *ar)
{
 u32 param_host;
 int ret;


 ret = ath10k_bmi_write32(ar, hi_app_host_interest,
     HTC_PROTOCOL_VERSION);
 if (ret) {
  ath10k_err(ar, "settings HTC version failed\n");
  return ret;
 }


 ret = ath10k_bmi_read32(ar, hi_option_flag, &param_host);
 if (ret) {
  ath10k_err(ar, "setting firmware mode (1/2) failed\n");
  return ret;
 }



 param_host |= (1 << HI_OPTION_NUM_DEV_SHIFT);


 param_host |= (HI_OPTION_FW_MODE_AP << HI_OPTION_FW_MODE_SHIFT);

 param_host |= (1 << HI_OPTION_MAC_ADDR_METHOD_SHIFT);

 param_host |= (0 << HI_OPTION_FW_BRIDGE_SHIFT);

 param_host |= (0 << HI_OPTION_FW_SUBMODE_SHIFT);

 ret = ath10k_bmi_write32(ar, hi_option_flag, param_host);
 if (ret) {
  ath10k_err(ar, "setting firmware mode (2/2) failed\n");
  return ret;
 }


 ret = ath10k_bmi_write32(ar, hi_be, 0);
 if (ret) {
  ath10k_err(ar, "setting host CPU BE mode failed\n");
  return ret;
 }


 ret = ath10k_bmi_write32(ar, hi_fw_swap, 0);

 if (ret) {
  ath10k_err(ar, "setting FW data/desc swap flags failed\n");
  return ret;
 }





 ret = ath10k_bmi_write32(ar, hi_hci_uart_pwr_mgmt_params_ext,
     ar->dev_id);
 if (ret) {
  ath10k_err(ar, "failed to set pwr_mgmt_params: %d\n", ret);
  return ret;
 }

 return 0;
}
