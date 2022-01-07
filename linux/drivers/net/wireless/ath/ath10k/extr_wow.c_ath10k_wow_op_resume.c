
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k {int state; int conf_mutex; TYPE_2__* running_fw; } ;
struct TYPE_3__ {int fw_features; } ;
struct TYPE_4__ {TYPE_1__ fw_file; } ;


 int ATH10K_FW_FEATURE_WOWLAN_SUPPORT ;






 int EIO ;
 scalar_t__ WARN_ON (int) ;
 int ath10k_hif_resume (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wow_nlo_cleanup (struct ath10k*) ;
 int ath10k_wow_wakeup (struct ath10k*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int ) ;

int ath10k_wow_op_resume(struct ieee80211_hw *hw)
{
 struct ath10k *ar = hw->priv;
 int ret;

 mutex_lock(&ar->conf_mutex);

 if (WARN_ON(!test_bit(ATH10K_FW_FEATURE_WOWLAN_SUPPORT,
         ar->running_fw->fw_file.fw_features))) {
  ret = 1;
  goto exit;
 }

 ret = ath10k_hif_resume(ar);
 if (ret) {
  ath10k_warn(ar, "failed to resume hif: %d\n", ret);
  goto exit;
 }

 ret = ath10k_wow_wakeup(ar);
 if (ret)
  ath10k_warn(ar, "failed to wakeup from wow: %d\n", ret);

 ret = ath10k_wow_nlo_cleanup(ar);
 if (ret)
  ath10k_warn(ar, "failed to cleanup nlo: %d\n", ret);

exit:
 if (ret) {
  switch (ar->state) {
  case 132:
   ar->state = 130;
   ret = 1;
   break;
  case 133:
  case 130:
  case 131:
  case 129:
  case 128:
   ath10k_warn(ar, "encountered unexpected device state %d on resume, cannot recover\n",
        ar->state);
   ret = -EIO;
   break;
  }
 }

 mutex_unlock(&ar->conf_mutex);
 return ret;
}
