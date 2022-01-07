
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voice_priority ;
typedef int u8 ;
struct ath_mci_profile_info {scalar_t__ type; int voice_type; int list; } ;
struct ath_mci_profile {scalar_t__ num_sco; int voice_priority; int info; } ;
struct ath_common {int dummy; } ;


 scalar_t__ ATH_MCI_MAX_ACL_PROFILE ;
 scalar_t__ ATH_MCI_MAX_SCO_PROFILE ;
 int GFP_ATOMIC ;
 int INC_PROF (struct ath_mci_profile*,struct ath_mci_profile_info*) ;
 scalar_t__ MCI_GPM_COEX_PROFILE_VOICE ;
 scalar_t__ NUM_PROF (struct ath_mci_profile*) ;
 struct ath_mci_profile_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (struct ath_mci_profile_info*,struct ath_mci_profile_info*,int) ;

__attribute__((used)) static bool ath_mci_add_profile(struct ath_common *common,
    struct ath_mci_profile *mci,
    struct ath_mci_profile_info *info)
{
 struct ath_mci_profile_info *entry;
 u8 voice_priority[] = { 110, 110, 110, 112, 110, 110, 114, 116, 118 };

 if ((mci->num_sco == ATH_MCI_MAX_SCO_PROFILE) &&
     (info->type == MCI_GPM_COEX_PROFILE_VOICE))
  return 0;

 if (((NUM_PROF(mci) - mci->num_sco) == ATH_MCI_MAX_ACL_PROFILE) &&
     (info->type != MCI_GPM_COEX_PROFILE_VOICE))
  return 0;

 entry = kzalloc(sizeof(*entry), GFP_ATOMIC);
 if (!entry)
  return 0;

 memcpy(entry, info, 10);
 INC_PROF(mci, info);
 list_add_tail(&entry->list, &mci->info);
 if (info->type == MCI_GPM_COEX_PROFILE_VOICE) {
  if (info->voice_type < sizeof(voice_priority))
   mci->voice_priority = voice_priority[info->voice_type];
  else
   mci->voice_priority = 110;
 }

 return 1;
}
