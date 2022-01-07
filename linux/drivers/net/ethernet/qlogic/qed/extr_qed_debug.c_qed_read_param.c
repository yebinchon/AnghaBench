
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ strlen (char const*) ;

__attribute__((used)) static u32 qed_read_param(u32 *dump_buf,
     const char **param_name,
     const char **param_str_val, u32 *param_num_val)
{
 char *char_buf = (char *)dump_buf;
 size_t offset = 0;


 *param_name = char_buf;
 offset += strlen(*param_name) + 1;


 if (*(char_buf + offset++)) {

  *param_str_val = char_buf + offset;
  *param_num_val = 0;
  offset += strlen(*param_str_val) + 1;
  if (offset & 0x3)
   offset += (4 - (offset & 0x3));
 } else {

  *param_str_val = ((void*)0);
  if (offset & 0x3)
   offset += (4 - (offset & 0x3));
  *param_num_val = *(u32 *)(char_buf + offset);
  offset += 4;
 }

 return (u32)offset / 4;
}
