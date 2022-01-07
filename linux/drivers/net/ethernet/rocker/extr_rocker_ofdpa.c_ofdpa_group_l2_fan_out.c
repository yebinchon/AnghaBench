
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ofdpa_port {int dummy; } ;
struct ofdpa_group_tbl_entry {int group_count; int group_ids; int group_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (int,int,int ) ;
 int kfree (struct ofdpa_group_tbl_entry*) ;
 struct ofdpa_group_tbl_entry* kzalloc (int,int ) ;
 int memcpy (int ,int const*,int) ;
 int ofdpa_group_tbl_do (struct ofdpa_port*,int,struct ofdpa_group_tbl_entry*) ;

__attribute__((used)) static int ofdpa_group_l2_fan_out(struct ofdpa_port *ofdpa_port,
      int flags, u8 group_count,
      const u32 *group_ids, u32 group_id)
{
 struct ofdpa_group_tbl_entry *entry;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 entry->group_id = group_id;
 entry->group_count = group_count;

 entry->group_ids = kcalloc(group_count, sizeof(u32), GFP_KERNEL);
 if (!entry->group_ids) {
  kfree(entry);
  return -ENOMEM;
 }
 memcpy(entry->group_ids, group_ids, group_count * sizeof(u32));

 return ofdpa_group_tbl_do(ofdpa_port, flags, entry);
}
