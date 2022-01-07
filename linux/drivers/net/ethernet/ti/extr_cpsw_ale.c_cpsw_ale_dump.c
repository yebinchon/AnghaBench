
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ale_entries; } ;
struct cpsw_ale {TYPE_1__ params; } ;


 int ALE_ENTRY_WORDS ;
 int cpsw_ale_read (struct cpsw_ale*,int,int *) ;

void cpsw_ale_dump(struct cpsw_ale *ale, u32 *data)
{
 int i;

 for (i = 0; i < ale->params.ale_entries; i++) {
  cpsw_ale_read(ale, i, data);
  data += ALE_ENTRY_WORDS;
 }
}
