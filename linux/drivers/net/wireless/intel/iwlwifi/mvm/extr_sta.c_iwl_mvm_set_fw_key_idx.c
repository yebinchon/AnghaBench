
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int* fw_key_deleted; int fw_key_table; int mutex; } ;


 int STA_KEY_IDX_INVALID ;
 int STA_KEY_MAX_NUM ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int iwl_mvm_set_fw_key_idx(struct iwl_mvm *mvm)
{
 int i, max = -1, max_offs = -1;

 lockdep_assert_held(&mvm->mutex);







 for (i = 0; i < STA_KEY_MAX_NUM; i++) {
  if (test_bit(i, mvm->fw_key_table))
   continue;
  if (mvm->fw_key_deleted[i] > max) {
   max = mvm->fw_key_deleted[i];
   max_offs = i;
  }
 }

 if (max_offs < 0)
  return STA_KEY_IDX_INVALID;

 return max_offs;
}
