
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ale_entries; } ;
struct cpsw_ale {TYPE_1__ params; } ;


 int ALE_ENTRY_WORDS ;
 int ALE_TYPE_FREE ;
 int ENOENT ;
 int cpsw_ale_get_entry_type (int *) ;
 int cpsw_ale_read (struct cpsw_ale*,int,int *) ;

__attribute__((used)) static int cpsw_ale_match_free(struct cpsw_ale *ale)
{
 u32 ale_entry[ALE_ENTRY_WORDS];
 int type, idx;

 for (idx = 0; idx < ale->params.ale_entries; idx++) {
  cpsw_ale_read(ale, idx, ale_entry);
  type = cpsw_ale_get_entry_type(ale_entry);
  if (type == ALE_TYPE_FREE)
   return idx;
 }
 return -ENOENT;
}
