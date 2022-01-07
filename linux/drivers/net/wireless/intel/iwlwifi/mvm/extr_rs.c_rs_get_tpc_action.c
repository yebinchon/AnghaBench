
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;
typedef scalar_t__ s32 ;
typedef enum tpc_action { ____Placeholder_tpc_action } tpc_action ;


 int IWL_DEBUG_RATE (struct iwl_mvm*,char*) ;
 int IWL_INVALID_VALUE ;
 int IWL_MVM_RS_TPC_SR_FORCE_INCREASE ;
 int IWL_MVM_RS_TPC_SR_NO_INCREASE ;
 scalar_t__ RS_PERCENT (int ) ;
 int TPC_ACTION_DECREASE ;
 int TPC_ACTION_INCREASE ;
 int TPC_ACTION_NO_RESTIRCTION ;
 int TPC_ACTION_STAY ;
 int TPC_INVALID ;

__attribute__((used)) static enum tpc_action rs_get_tpc_action(struct iwl_mvm *mvm,
      s32 sr, int weak, int strong,
      int current_tpt,
      int weak_tpt, int strong_tpt)
{

 if (current_tpt == IWL_INVALID_VALUE) {
  IWL_DEBUG_RATE(mvm, "no current tpt. stay.\n");
  return TPC_ACTION_STAY;
 }


 if (sr <= RS_PERCENT(IWL_MVM_RS_TPC_SR_FORCE_INCREASE) ||
     current_tpt == 0) {
  IWL_DEBUG_RATE(mvm, "increase txp because of weak SR\n");
  return TPC_ACTION_NO_RESTIRCTION;
 }


 if (sr >= RS_PERCENT(IWL_MVM_RS_TPC_SR_NO_INCREASE) &&
     weak != TPC_INVALID) {
  if (weak_tpt == IWL_INVALID_VALUE &&
      (strong_tpt == IWL_INVALID_VALUE ||
       current_tpt >= strong_tpt)) {
   IWL_DEBUG_RATE(mvm,
           "no weak txp measurement. decrease txp\n");
   return TPC_ACTION_DECREASE;
  }

  if (weak_tpt > current_tpt) {
   IWL_DEBUG_RATE(mvm,
           "lower txp has better tpt. decrease txp\n");
   return TPC_ACTION_DECREASE;
  }
 }


 if (sr < RS_PERCENT(IWL_MVM_RS_TPC_SR_NO_INCREASE) &&
     strong != TPC_INVALID) {
  if (weak_tpt == IWL_INVALID_VALUE &&
      strong_tpt != IWL_INVALID_VALUE &&
      current_tpt < strong_tpt) {
   IWL_DEBUG_RATE(mvm,
           "higher txp has better tpt. increase txp\n");
   return TPC_ACTION_INCREASE;
  }

  if (weak_tpt < current_tpt &&
      (strong_tpt == IWL_INVALID_VALUE ||
       strong_tpt > current_tpt)) {
   IWL_DEBUG_RATE(mvm,
           "lower txp has worse tpt. increase txp\n");
   return TPC_ACTION_INCREASE;
  }
 }

 IWL_DEBUG_RATE(mvm, "no need to increase or decrease txp - stay\n");
 return TPC_ACTION_STAY;
}
