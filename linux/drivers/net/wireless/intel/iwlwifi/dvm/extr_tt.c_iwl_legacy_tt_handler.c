
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_tt_mgmt {scalar_t__ tt_previous_temp; int state; scalar_t__ tt_power_mode; int ct_kill_waiting_tm; } ;
struct iwl_priv {int mutex; int status; struct iwl_tt_mgmt thermal_throttle; } ;
typedef scalar_t__ s32 ;
typedef enum iwl_tt_state { ____Placeholder_iwl_tt_state } iwl_tt_state ;


 int IWL_DEBUG_TEMP (struct iwl_priv*,char*,scalar_t__) ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 scalar_t__ IWL_MINIMAL_POWER_THRESHOLD ;
 scalar_t__ IWL_POWER_INDEX_3 ;
 scalar_t__ IWL_POWER_INDEX_4 ;
 scalar_t__ IWL_POWER_INDEX_5 ;
 scalar_t__ IWL_REDUCED_PERFORMANCE_THRESHOLD_1 ;
 scalar_t__ IWL_REDUCED_PERFORMANCE_THRESHOLD_2 ;



 int IWL_TI_CT_KILL ;
 scalar_t__ IWL_TT_INCREASE_MARGIN ;
 int STATUS_CT_KILL ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int iwl_perform_ct_kill_task (struct iwl_priv*,int) ;
 scalar_t__ iwl_power_update_mode (struct iwl_priv*,int) ;
 int iwl_prepare_ct_kill_task (struct iwl_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void iwl_legacy_tt_handler(struct iwl_priv *priv, s32 temp, bool force)
{
 struct iwl_tt_mgmt *tt = &priv->thermal_throttle;
 enum iwl_tt_state old_state;
 old_state = tt->state;

 if (temp >= IWL_MINIMAL_POWER_THRESHOLD)
  tt->state = IWL_TI_CT_KILL;
 else if (temp >= IWL_REDUCED_PERFORMANCE_THRESHOLD_2)
  tt->state = 128;
 else if (temp >= IWL_REDUCED_PERFORMANCE_THRESHOLD_1)
  tt->state = 129;
 else
  tt->state = 130;





 del_timer_sync(&priv->thermal_throttle.ct_kill_waiting_tm);
 if (tt->state != old_state) {
  switch (tt->state) {
  case 130:





   break;
  case 129:
   tt->tt_power_mode = IWL_POWER_INDEX_3;
   break;
  case 128:
   tt->tt_power_mode = IWL_POWER_INDEX_4;
   break;
  default:
   tt->tt_power_mode = IWL_POWER_INDEX_5;
   break;
  }
  mutex_lock(&priv->mutex);
  if (old_state == IWL_TI_CT_KILL)
   clear_bit(STATUS_CT_KILL, &priv->status);
  if (tt->state != IWL_TI_CT_KILL &&
      iwl_power_update_mode(priv, 1)) {



   if (old_state == IWL_TI_CT_KILL)
    set_bit(STATUS_CT_KILL, &priv->status);
   tt->state = old_state;
   IWL_ERR(priv, "Cannot update power mode, "
     "TT state not updated\n");
  } else {
   if (tt->state == IWL_TI_CT_KILL) {
    if (force) {
     set_bit(STATUS_CT_KILL, &priv->status);
     iwl_perform_ct_kill_task(priv, 1);
    } else {
     iwl_prepare_ct_kill_task(priv);
     tt->state = old_state;
    }
   } else if (old_state == IWL_TI_CT_KILL) {
    iwl_perform_ct_kill_task(priv, 0);
   }
   IWL_DEBUG_TEMP(priv, "Temperature state changed %u\n",
     tt->state);
   IWL_DEBUG_TEMP(priv, "Power Index change to %u\n",
     tt->tt_power_mode);
  }
  mutex_unlock(&priv->mutex);
 }
}
