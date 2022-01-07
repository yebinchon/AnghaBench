
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rf_reset {scalar_t__ last_reset_jiffies; int reset_success_count; int reset_reject_count; int reset_request_count; } ;
struct iwl_priv {struct iwl_rf_reset rf_reset; int status; } ;


 int EAGAIN ;
 int ENOLINK ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*) ;
 int IWL_DEBUG_SCAN (struct iwl_priv*,char*) ;
 scalar_t__ IWL_DELAY_NEXT_FORCE_RF_RESET ;
 int STATUS_EXIT_PENDING ;
 int iwl_internal_short_hw_scan (struct iwl_priv*) ;
 int iwl_is_any_associated (struct iwl_priv*) ;
 scalar_t__ jiffies ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

int iwl_force_rf_reset(struct iwl_priv *priv, bool external)
{
 struct iwl_rf_reset *rf_reset;

 if (test_bit(STATUS_EXIT_PENDING, &priv->status))
  return -EAGAIN;

 if (!iwl_is_any_associated(priv)) {
  IWL_DEBUG_SCAN(priv, "force reset rejected: not associated\n");
  return -ENOLINK;
 }

 rf_reset = &priv->rf_reset;
 rf_reset->reset_request_count++;
 if (!external && rf_reset->last_reset_jiffies &&
     time_after(rf_reset->last_reset_jiffies +
         IWL_DELAY_NEXT_FORCE_RF_RESET, jiffies)) {
  IWL_DEBUG_INFO(priv, "RF reset rejected\n");
  rf_reset->reset_reject_count++;
  return -EAGAIN;
 }
 rf_reset->reset_success_count++;
 rf_reset->last_reset_jiffies = jiffies;
 IWL_DEBUG_INFO(priv, "perform radio reset.\n");
 iwl_internal_short_hw_scan(priv);
 return 0;
}
