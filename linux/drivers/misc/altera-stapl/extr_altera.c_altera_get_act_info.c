
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct altera_procinfo {int* name; int attrs; struct altera_procinfo* next; } ;
typedef long s32 ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int get_unaligned_be32 (int*) ;
 struct altera_procinfo* kzalloc (int,int ) ;

__attribute__((used)) static int altera_get_act_info(u8 *p,
     s32 program_size,
     int index,
     char **name,
     char **description,
     struct altera_procinfo **proc_list)
{
 int status = -EIO;
 struct altera_procinfo *procptr = ((void*)0);
 struct altera_procinfo *tmpptr = ((void*)0);
 u32 first_word = 0L;
 u32 action_table = 0L;
 u32 proc_table = 0L;
 u32 str_table = 0L;
 u32 note_strings = 0L;
 u32 action_count = 0L;
 u32 proc_count = 0L;
 u32 act_name_id = 0L;
 u32 act_desc_id = 0L;
 u32 act_proc_id = 0L;
 u32 act_proc_name = 0L;
 u8 act_proc_attribute = 0;

 if (program_size <= 52L)
  return status;

 first_word = get_unaligned_be32(&p[0]);

 if (first_word != 0x4A414D01L)
  return status;

 action_table = get_unaligned_be32(&p[4]);
 proc_table = get_unaligned_be32(&p[8]);
 str_table = get_unaligned_be32(&p[12]);
 note_strings = get_unaligned_be32(&p[16]);
 action_count = get_unaligned_be32(&p[48]);
 proc_count = get_unaligned_be32(&p[52]);

 if (index >= action_count)
  return status;

 act_name_id = get_unaligned_be32(&p[action_table + (12 * index)]);
 act_desc_id = get_unaligned_be32(&p[action_table + (12 * index) + 4]);
 act_proc_id = get_unaligned_be32(&p[action_table + (12 * index) + 8]);

 *name = &p[str_table + act_name_id];

 if (act_desc_id < (note_strings - str_table))
  *description = &p[str_table + act_desc_id];

 do {
  act_proc_name = get_unaligned_be32(
     &p[proc_table + (13 * act_proc_id)]);
  act_proc_attribute =
   (p[proc_table + (13 * act_proc_id) + 8] & 0x03);

  procptr =
    kzalloc(sizeof(struct altera_procinfo),
        GFP_KERNEL);

  if (procptr == ((void*)0))
   status = -ENOMEM;
  else {
   procptr->name = &p[str_table + act_proc_name];
   procptr->attrs = act_proc_attribute;
   procptr->next = ((void*)0);


   if (*proc_list == ((void*)0))
    *proc_list = procptr;
   else {
    tmpptr = *proc_list;
    while (tmpptr->next != ((void*)0))
     tmpptr = tmpptr->next;
    tmpptr->next = procptr;
   }
  }

  act_proc_id = get_unaligned_be32(
    &p[proc_table + (13 * act_proc_id) + 4]);
 } while ((act_proc_id != 0) && (act_proc_id < proc_count));

 return status;
}
