
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int async_handlers_wk; } ;


 int flush_work (int *) ;

__attribute__((used)) static inline void iwl_mvm_wait_for_async_handlers(struct iwl_mvm *mvm)
{
 flush_work(&mvm->async_handlers_wk);
}
