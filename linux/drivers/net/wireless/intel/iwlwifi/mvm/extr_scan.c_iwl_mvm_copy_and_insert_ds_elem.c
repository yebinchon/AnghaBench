
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm {int dummy; } ;


 int ARRAY_SIZE (int const*) ;
 int WLAN_EID_DS_PARAMS ;




 size_t ieee80211_ie_split (int const*,size_t,int const*,int ,int ) ;
 int iwl_mvm_rrm_scan_needed (struct iwl_mvm*) ;
 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static u8 *iwl_mvm_copy_and_insert_ds_elem(struct iwl_mvm *mvm, const u8 *ies,
        size_t len, u8 *const pos)
{
 static const u8 before_ds_params[] = {
   129,
   128,
   130,
   131,
 };
 size_t offs;
 u8 *newpos = pos;

 if (!iwl_mvm_rrm_scan_needed(mvm)) {
  memcpy(newpos, ies, len);
  return newpos + len;
 }

 offs = ieee80211_ie_split(ies, len,
      before_ds_params,
      ARRAY_SIZE(before_ds_params),
      0);

 memcpy(newpos, ies, offs);
 newpos += offs;


 *newpos++ = WLAN_EID_DS_PARAMS;
 *newpos++ = 1;
 *newpos++ = 0;

 memcpy(newpos, ies + offs, len - offs);
 newpos += len - offs;

 return newpos;
}
