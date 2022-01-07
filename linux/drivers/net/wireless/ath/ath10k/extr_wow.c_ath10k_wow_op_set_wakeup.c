
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k {int conf_mutex; int dev; TYPE_2__* running_fw; } ;
struct TYPE_3__ {int fw_features; } ;
struct TYPE_4__ {TYPE_1__ fw_file; } ;


 int ATH10K_FW_FEATURE_WOWLAN_SUPPORT ;
 int device_set_wakeup_enable (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int ) ;

void ath10k_wow_op_set_wakeup(struct ieee80211_hw *hw, bool enabled)
{
 struct ath10k *ar = hw->priv;

 mutex_lock(&ar->conf_mutex);
 if (test_bit(ATH10K_FW_FEATURE_WOWLAN_SUPPORT,
       ar->running_fw->fw_file.fw_features)) {
  device_set_wakeup_enable(ar->dev, enabled);
 }
 mutex_unlock(&ar->conf_mutex);
}
