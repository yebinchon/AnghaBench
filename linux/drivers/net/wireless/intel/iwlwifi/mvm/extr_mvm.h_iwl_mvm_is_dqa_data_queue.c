
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iwl_mvm {int dummy; } ;


 scalar_t__ IWL_MVM_DQA_MAX_DATA_QUEUE ;
 scalar_t__ IWL_MVM_DQA_MIN_DATA_QUEUE ;

__attribute__((used)) static inline bool iwl_mvm_is_dqa_data_queue(struct iwl_mvm *mvm, u8 queue)
{
 return (queue >= IWL_MVM_DQA_MIN_DATA_QUEUE) &&
        (queue <= IWL_MVM_DQA_MAX_DATA_QUEUE);
}
