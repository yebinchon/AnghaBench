
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int cal_mode; int pre_cal_file; } ;


 int ATH10K_DBG_BOOT ;
 int ATH10K_PRE_CAL_MODE_DT ;
 int ATH10K_PRE_CAL_MODE_FILE ;
 int ath10k_cal_mode_str (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int ath10k_download_cal_dt (struct ath10k*,char*) ;
 int ath10k_download_cal_file (struct ath10k*,int ) ;

__attribute__((used)) static int ath10k_core_pre_cal_download(struct ath10k *ar)
{
 int ret;

 ret = ath10k_download_cal_file(ar, ar->pre_cal_file);
 if (ret == 0) {
  ar->cal_mode = ATH10K_PRE_CAL_MODE_FILE;
  goto success;
 }

 ath10k_dbg(ar, ATH10K_DBG_BOOT,
     "boot did not find a pre calibration file, try DT next: %d\n",
     ret);

 ret = ath10k_download_cal_dt(ar, "qcom,ath10k-pre-calibration-data");
 if (ret) {
  ath10k_dbg(ar, ATH10K_DBG_BOOT,
      "unable to load pre cal data from DT: %d\n", ret);
  return ret;
 }
 ar->cal_mode = ATH10K_PRE_CAL_MODE_DT;

success:
 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot using calibration mode %s\n",
     ath10k_cal_mode_str(ar->cal_mode));

 return 0;
}
