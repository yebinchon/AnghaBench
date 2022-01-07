
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static int iwl_mvm_fwrt_dump_start(void *ctx)
{
 struct iwl_mvm *mvm = ctx;

 mutex_lock(&mvm->mutex);

 return 0;
}
