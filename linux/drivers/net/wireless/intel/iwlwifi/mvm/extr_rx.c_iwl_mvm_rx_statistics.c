
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int dummy; } ;


 int iwl_mvm_handle_rx_statistics (struct iwl_mvm*,int ) ;
 int rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_rx_statistics(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb)
{
 iwl_mvm_handle_rx_statistics(mvm, rxb_addr(rxb));
}
