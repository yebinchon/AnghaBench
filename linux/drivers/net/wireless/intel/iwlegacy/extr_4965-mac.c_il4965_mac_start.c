
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int is_open; int status; int wait_command_queue; int mutex; } ;
struct ieee80211_hw {struct il_priv* priv; } ;


 int D_INFO (char*) ;
 int D_MAC80211 (char*) ;
 int ETIMEDOUT ;
 int IL_ERR (char*,int ) ;
 int S_READY ;
 int UCODE_READY_TIMEOUT ;
 int __il4965_up (struct il_priv*) ;
 int il4965_led_enable (struct il_priv*) ;
 scalar_t__ il_is_rfkill (struct il_priv*) ;
 int jiffies_to_msecs (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;
 int wait_event_timeout (int ,int ,int ) ;

int
il4965_mac_start(struct ieee80211_hw *hw)
{
 struct il_priv *il = hw->priv;
 int ret;

 D_MAC80211("enter\n");


 mutex_lock(&il->mutex);
 ret = __il4965_up(il);
 mutex_unlock(&il->mutex);

 if (ret)
  return ret;

 if (il_is_rfkill(il))
  goto out;

 D_INFO("Start UP work done.\n");



 ret = wait_event_timeout(il->wait_command_queue,
     test_bit(S_READY, &il->status),
     UCODE_READY_TIMEOUT);
 if (!ret) {
  if (!test_bit(S_READY, &il->status)) {
   IL_ERR("START_ALIVE timeout after %dms.\n",
    jiffies_to_msecs(UCODE_READY_TIMEOUT));
   return -ETIMEDOUT;
  }
 }

 il4965_led_enable(il);

out:
 il->is_open = 1;
 D_MAC80211("leave\n");
 return 0;
}
