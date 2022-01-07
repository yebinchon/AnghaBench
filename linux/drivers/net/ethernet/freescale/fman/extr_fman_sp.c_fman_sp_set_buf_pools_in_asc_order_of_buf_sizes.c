
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct fman_ext_pools {int num_of_pools_used; TYPE_1__* ext_buf_pool; } ;
struct TYPE_2__ {scalar_t__ size; size_t id; } ;



void fman_sp_set_buf_pools_in_asc_order_of_buf_sizes(struct fman_ext_pools
           *fm_ext_pools,
           u8 *ordered_array,
           u16 *sizes_array)
{
 u16 buf_size = 0;
 int i = 0, j = 0, k = 0;




 for (i = 0; i < fm_ext_pools->num_of_pools_used; i++) {

  buf_size = fm_ext_pools->ext_buf_pool[i].size;




  sizes_array[fm_ext_pools->ext_buf_pool[i].id] = buf_size;


  for (j = 0; j <= i; j++) {

   if (j == i)
    ordered_array[i] =
        fm_ext_pools->ext_buf_pool[i].id;
   else {

    if (buf_size < sizes_array[ordered_array[j]]) {



     for (k = i; k > j; k--)
      ordered_array[k] =
          ordered_array[k - 1];




     ordered_array[k] =
         fm_ext_pools->ext_buf_pool[i].id;
     break;
    }
   }
  }
 }
}
