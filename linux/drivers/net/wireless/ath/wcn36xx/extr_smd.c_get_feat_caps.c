
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum place_holder_in_cap_bitmap { ____Placeholder_place_holder_in_cap_bitmap } place_holder_in_cap_bitmap ;


 int EINVAL ;
 int wcn36xx_warn (char*,int) ;

int get_feat_caps(u32 *bitmap, enum place_holder_in_cap_bitmap cap)
{
 int arr_idx, bit_idx;

 if (cap < 0 || cap > 127) {
  wcn36xx_warn("error cap idx %d\n", cap);
  return -EINVAL;
 }

 arr_idx = cap / 32;
 bit_idx = cap % 32;

 return (bitmap[arr_idx] & (1 << bit_idx)) ? 1 : 0;
}
