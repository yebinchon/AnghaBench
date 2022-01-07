
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct altera_jtag {int ir_post; int* ir_post_data; } ;


 int ENOMEM ;
 scalar_t__ alt_malloc (int) ;
 int kfree (int*) ;

int altera_set_ir_post(struct altera_jtag *js, u32 count, u32 start_index,
      u8 *postamble_data)
{
 int status = 0;
 u32 i;
 u32 j;

 if (count > js->ir_post) {
  kfree(js->ir_post_data);
  js->ir_post_data = (u8 *)alt_malloc((count + 7) >> 3);
  if (js->ir_post_data == ((void*)0))
   status = -ENOMEM;
  else
   js->ir_post = count;

 } else
  js->ir_post = count;

 if (status != 0)
  return status;

 for (i = 0; i < count; ++i) {
  j = i + start_index;

  if (postamble_data == ((void*)0))
   js->ir_post_data[i >> 3] |= (1 << (i & 7));
  else {
   if (postamble_data[j >> 3] & (1 << (j & 7)))
    js->ir_post_data[i >> 3] |= (1 << (i & 7));
   else
    js->ir_post_data[i >> 3] &=
        ~(u32)(1 << (i & 7));

  }
 }

 return status;
}
