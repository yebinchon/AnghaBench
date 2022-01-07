
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm {int dummy; } ;


 int iwl_mvm_get_valid_tx_ant (struct iwl_mvm*) ;
 int iwl_mvm_next_antenna (struct iwl_mvm*,int ,int ) ;

__attribute__((used)) static inline void iwl_mvm_toggle_tx_ant(struct iwl_mvm *mvm, u8 *ant)
{
 *ant = iwl_mvm_next_antenna(mvm, iwl_mvm_get_valid_tx_ant(mvm), *ant);
}
