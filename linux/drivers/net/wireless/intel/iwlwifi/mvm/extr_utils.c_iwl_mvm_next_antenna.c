
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm {int dummy; } ;


 int BIT (int) ;
 int MAX_ANT_NUM ;
 int WARN_ONCE (int,char*,int) ;

u8 iwl_mvm_next_antenna(struct iwl_mvm *mvm, u8 valid, u8 last_idx)
{
 u8 ind = last_idx;
 int i;

 for (i = 0; i < MAX_ANT_NUM; i++) {
  ind = (ind + 1) % MAX_ANT_NUM;
  if (valid & BIT(ind))
   return ind;
 }

 WARN_ONCE(1, "Failed to toggle between antennas 0x%x", valid);
 return last_idx;
}
