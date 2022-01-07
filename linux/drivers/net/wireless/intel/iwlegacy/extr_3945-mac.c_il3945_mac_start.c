
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rfkill_poll; } ;
struct TYPE_3__ {int len; } ;
struct il_priv {int is_open; TYPE_2__ _3945; int status; int wait_command_queue; int mutex; TYPE_1__ ucode_code; } ;
struct ieee80211_hw {struct il_priv* priv; } ;


 int D_INFO (char*) ;
 int D_MAC80211 (char*) ;
 int ETIMEDOUT ;
 int IL_ERR (char*,int) ;
 int S_READY ;
 int UCODE_READY_TIMEOUT ;
 int __il3945_up (struct il_priv*) ;
 int cancel_delayed_work (int *) ;
 int il3945_read_ucode (struct il_priv*) ;
 int jiffies_to_msecs (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int
il3945_mac_start(struct ieee80211_hw *hw)
{
 struct il_priv *il = hw->priv;
 int ret;


 mutex_lock(&il->mutex);
 D_MAC80211("enter\n");




 if (!il->ucode_code.len) {
  ret = il3945_read_ucode(il);
  if (ret) {
   IL_ERR("Could not read microcode: %d\n", ret);
   mutex_unlock(&il->mutex);
   goto out_release_irq;
  }
 }

 ret = __il3945_up(il);

 mutex_unlock(&il->mutex);

 if (ret)
  goto out_release_irq;

 D_INFO("Start UP work.\n");



 ret = wait_event_timeout(il->wait_command_queue,
     test_bit(S_READY, &il->status),
     UCODE_READY_TIMEOUT);
 if (!ret) {
  if (!test_bit(S_READY, &il->status)) {
   IL_ERR("Wait for START_ALIVE timeout after %dms.\n",
          jiffies_to_msecs(UCODE_READY_TIMEOUT));
   ret = -ETIMEDOUT;
   goto out_release_irq;
  }
 }



 cancel_delayed_work(&il->_3945.rfkill_poll);

 il->is_open = 1;
 D_MAC80211("leave\n");
 return 0;

out_release_irq:
 il->is_open = 0;
 D_MAC80211("leave - failed\n");
 return ret;
}
