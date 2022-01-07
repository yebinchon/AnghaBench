
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_phy_db_entry {scalar_t__ size; int * data; } ;
struct iwl_phy_db {int dummy; } ;
typedef enum iwl_phy_db_section_type { ____Placeholder_iwl_phy_db_section_type } iwl_phy_db_section_type ;


 struct iwl_phy_db_entry* iwl_phy_db_get_section (struct iwl_phy_db*,int,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void iwl_phy_db_free_section(struct iwl_phy_db *phy_db,
        enum iwl_phy_db_section_type type,
        u16 chg_id)
{
 struct iwl_phy_db_entry *entry =
    iwl_phy_db_get_section(phy_db, type, chg_id);
 if (!entry)
  return;

 kfree(entry->data);
 entry->data = ((void*)0);
 entry->size = 0;
}
