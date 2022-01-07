
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int cal_mode; int cal_file; } ;


 int ATH10K_CAL_MODE_DT ;
 int ATH10K_CAL_MODE_EEPROM ;
 int ATH10K_CAL_MODE_FILE ;
 int ATH10K_CAL_MODE_OTP ;
 int ATH10K_DBG_BOOT ;
 int ath10k_cal_mode_str (int ) ;
 int ath10k_core_pre_cal_config (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int ath10k_download_and_run_otp (struct ath10k*) ;
 int ath10k_download_cal_dt (struct ath10k*,char*) ;
 int ath10k_download_cal_eeprom (struct ath10k*) ;
 int ath10k_download_cal_file (struct ath10k*,int ) ;
 int ath10k_err (struct ath10k*,char*,int) ;

__attribute__((used)) static int ath10k_download_cal_data(struct ath10k *ar)
{
 int ret;

 ret = ath10k_core_pre_cal_config(ar);
 if (ret == 0)
  return 0;

 ath10k_dbg(ar, ATH10K_DBG_BOOT,
     "pre cal download procedure failed, try cal file: %d\n",
     ret);

 ret = ath10k_download_cal_file(ar, ar->cal_file);
 if (ret == 0) {
  ar->cal_mode = ATH10K_CAL_MODE_FILE;
  goto done;
 }

 ath10k_dbg(ar, ATH10K_DBG_BOOT,
     "boot did not find a calibration file, try DT next: %d\n",
     ret);

 ret = ath10k_download_cal_dt(ar, "qcom,ath10k-calibration-data");
 if (ret == 0) {
  ar->cal_mode = ATH10K_CAL_MODE_DT;
  goto done;
 }

 ath10k_dbg(ar, ATH10K_DBG_BOOT,
     "boot did not find DT entry, try target EEPROM next: %d\n",
     ret);

 ret = ath10k_download_cal_eeprom(ar);
 if (ret == 0) {
  ar->cal_mode = ATH10K_CAL_MODE_EEPROM;
  goto done;
 }

 ath10k_dbg(ar, ATH10K_DBG_BOOT,
     "boot did not find target EEPROM entry, try OTP next: %d\n",
     ret);

 ret = ath10k_download_and_run_otp(ar);
 if (ret) {
  ath10k_err(ar, "failed to run otp: %d\n", ret);
  return ret;
 }

 ar->cal_mode = ATH10K_CAL_MODE_OTP;

done:
 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot using calibration mode %s\n",
     ath10k_cal_mode_str(ar->cal_mode));
 return 0;
}
