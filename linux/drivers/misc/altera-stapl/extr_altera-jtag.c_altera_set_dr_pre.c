
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct altera_jtag {int dr_pre; int* dr_pre_data; } ;


 int ENOMEM ;
 scalar_t__ alt_malloc (int) ;
 int kfree (int*) ;

int altera_set_dr_pre(struct altera_jtag *js,
    u32 count, u32 start_index,
    u8 *preamble_data)
{
 int status = 0;
 u32 i;
 u32 j;

 if (count > js->dr_pre) {
  kfree(js->dr_pre_data);
  js->dr_pre_data = (u8 *)alt_malloc((count + 7) >> 3);
  if (js->dr_pre_data == ((void*)0))
   status = -ENOMEM;
  else
   js->dr_pre = count;
 } else
  js->dr_pre = count;

 if (status == 0) {
  for (i = 0; i < count; ++i) {
   j = i + start_index;

   if (preamble_data == ((void*)0))
    js->dr_pre_data[i >> 3] |= (1 << (i & 7));
   else {
    if (preamble_data[j >> 3] & (1 << (j & 7)))
     js->dr_pre_data[i >> 3] |=
       (1 << (i & 7));
    else
     js->dr_pre_data[i >> 3] &=
       ~(u32)(1 << (i & 7));

   }
  }
 }

 return status;
}
