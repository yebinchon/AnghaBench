
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int u8 ;
typedef int u32 ;
struct uni_table_desc {int entry_size; int findex; int num_entries; } ;
typedef size_t __le32 ;


 size_t cpu_to_le32 (int ) ;

__attribute__((used)) static struct uni_table_desc *nx_get_table_desc(const u8 *unirom, int section)
{
 uint32_t i;
 struct uni_table_desc *directory = (struct uni_table_desc *) &unirom[0];
 __le32 entries = cpu_to_le32(directory->num_entries);

 for (i = 0; i < entries; i++) {

  __le32 offs = cpu_to_le32(directory->findex) +
    (i * cpu_to_le32(directory->entry_size));
  __le32 tab_type = cpu_to_le32(*((u32 *)&unirom[offs] + 8));

  if (tab_type == section)
   return (struct uni_table_desc *) &unirom[offs];
 }

 return ((void*)0);
}
