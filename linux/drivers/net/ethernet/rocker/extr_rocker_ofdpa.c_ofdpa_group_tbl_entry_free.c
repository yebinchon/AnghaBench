
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_group_tbl_entry {struct ofdpa_group_tbl_entry* group_ids; int group_id; } ;


 int ROCKER_GROUP_TYPE_GET (int ) ;


 int kfree (struct ofdpa_group_tbl_entry*) ;

__attribute__((used)) static void ofdpa_group_tbl_entry_free(struct ofdpa_group_tbl_entry *entry)
{
 switch (ROCKER_GROUP_TYPE_GET(entry->group_id)) {
 case 129:
 case 128:
  kfree(entry->group_ids);
  break;
 default:
  break;
 }
 kfree(entry);
}
