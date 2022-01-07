
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int EOPNOTSUPP ;
 int ath10k_download_board_data (struct ath10k*,void*,size_t) ;
 int ath10k_hif_fetch_cal_eeprom (struct ath10k*,void**,size_t*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int kfree (void*) ;

__attribute__((used)) static int ath10k_download_cal_eeprom(struct ath10k *ar)
{
 size_t data_len;
 void *data = ((void*)0);
 int ret;

 ret = ath10k_hif_fetch_cal_eeprom(ar, &data, &data_len);
 if (ret) {
  if (ret != -EOPNOTSUPP)
   ath10k_warn(ar, "failed to read calibration data from EEPROM: %d\n",
        ret);
  goto out_free;
 }

 ret = ath10k_download_board_data(ar, data, data_len);
 if (ret) {
  ath10k_warn(ar, "failed to download calibration data from EEPROM: %d\n",
       ret);
  goto out_free;
 }

 ret = 0;

out_free:
 kfree(data);

 return ret;
}
