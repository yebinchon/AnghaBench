
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct sq_threshold_params {scalar_t__* lower_threshold; } ;
typedef scalar_t__ s16 ;



__attribute__((used)) static u8 ath6kl_wmi_get_lower_threshold(s16 rssi,
      struct sq_threshold_params *sq_thresh,
      u32 size)
{
 u32 index;
 u8 threshold = (u8) sq_thresh->lower_threshold[size - 1];


 for (index = 0; index < size; index++) {
  if (rssi > sq_thresh->lower_threshold[index]) {
   threshold = (u8) sq_thresh->lower_threshold[index];
   break;
  }
 }

 return threshold;
}
