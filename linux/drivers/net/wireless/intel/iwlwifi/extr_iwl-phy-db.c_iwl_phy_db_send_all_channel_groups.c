
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct iwl_phy_db_entry {int data; int size; } ;
struct iwl_phy_db {int trans; } ;
typedef enum iwl_phy_db_section_type { ____Placeholder_iwl_phy_db_section_type } iwl_phy_db_section_type ;


 int EINVAL ;
 int IWL_DEBUG_INFO (int ,char*,int,scalar_t__) ;
 int IWL_ERR (int ,char*,int,scalar_t__,int) ;
 struct iwl_phy_db_entry* iwl_phy_db_get_section (struct iwl_phy_db*,int,scalar_t__) ;
 int iwl_send_phy_db_cmd (struct iwl_phy_db*,int,int ,int ) ;

__attribute__((used)) static int iwl_phy_db_send_all_channel_groups(
     struct iwl_phy_db *phy_db,
     enum iwl_phy_db_section_type type,
     u8 max_ch_groups)
{
 u16 i;
 int err;
 struct iwl_phy_db_entry *entry;


 for (i = 0; i < max_ch_groups; i++) {
  entry = iwl_phy_db_get_section(phy_db,
            type,
            i);
  if (!entry)
   return -EINVAL;

  if (!entry->size)
   continue;


  err = iwl_send_phy_db_cmd(phy_db,
       type,
       entry->size,
       entry->data);
  if (err) {
   IWL_ERR(phy_db->trans,
    "Can't SEND phy_db section %d (%d), err %d\n",
    type, i, err);
   return err;
  }

  IWL_DEBUG_INFO(phy_db->trans,
          "Sent PHY_DB HCMD, type = %d num = %d\n",
          type, i);
 }

 return 0;
}
