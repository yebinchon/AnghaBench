
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;


 int IWL_MVM_RS_TPC_TX_POWER_STEP ;
 int TPC_INVALID ;
 int TPC_MAX_REDUCTION ;

__attribute__((used)) static void rs_get_adjacent_txp(struct iwl_mvm *mvm, int index,
    int *weaker, int *stronger)
{
 *weaker = index + IWL_MVM_RS_TPC_TX_POWER_STEP;
 if (*weaker > TPC_MAX_REDUCTION)
  *weaker = TPC_INVALID;

 *stronger = index - IWL_MVM_RS_TPC_TX_POWER_STEP;
 if (*stronger < 0)
  *stronger = TPC_INVALID;
}
