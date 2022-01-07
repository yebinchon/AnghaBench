
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int fw_api; } ;


 int ATH6KL_DBG_BOOT ;
 int ATH6KL_FW_API2_FILE ;
 int ATH6KL_FW_API3_FILE ;
 int ATH6KL_FW_API4_FILE ;
 int ATH6KL_FW_API5_FILE ;
 int ath6kl_dbg (int ,char*,int) ;
 int ath6kl_fetch_board_file (struct ath6kl*) ;
 int ath6kl_fetch_fw_api1 (struct ath6kl*) ;
 int ath6kl_fetch_fw_apin (struct ath6kl*,int ) ;
 int ath6kl_fetch_testmode_file (struct ath6kl*) ;

int ath6kl_init_fetch_firmwares(struct ath6kl *ar)
{
 int ret;

 ret = ath6kl_fetch_board_file(ar);
 if (ret)
  return ret;

 ret = ath6kl_fetch_testmode_file(ar);
 if (ret)
  return ret;

 ret = ath6kl_fetch_fw_apin(ar, ATH6KL_FW_API5_FILE);
 if (ret == 0) {
  ar->fw_api = 5;
  goto out;
 }

 ret = ath6kl_fetch_fw_apin(ar, ATH6KL_FW_API4_FILE);
 if (ret == 0) {
  ar->fw_api = 4;
  goto out;
 }

 ret = ath6kl_fetch_fw_apin(ar, ATH6KL_FW_API3_FILE);
 if (ret == 0) {
  ar->fw_api = 3;
  goto out;
 }

 ret = ath6kl_fetch_fw_apin(ar, ATH6KL_FW_API2_FILE);
 if (ret == 0) {
  ar->fw_api = 2;
  goto out;
 }

 ret = ath6kl_fetch_fw_api1(ar);
 if (ret)
  return ret;

 ar->fw_api = 1;

out:
 ath6kl_dbg(ATH6KL_DBG_BOOT, "using fw api %d\n", ar->fw_api);

 return 0;
}
