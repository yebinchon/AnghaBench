
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_fwrt_dump_end(void *ctx)
{
 struct iwl_mvm *mvm = ctx;

 mutex_unlock(&mvm->mutex);
}
