
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t int16_t ;


 size_t ATH_AIC_MAX_BT_CHANNEL ;

__attribute__((used)) static int16_t ar9003_aic_find_valid(bool *cal_sram_valid,
         bool dir, u8 index)
{
 int16_t i;

 if (dir) {
  for (i = index + 1; i < ATH_AIC_MAX_BT_CHANNEL; i++) {
   if (cal_sram_valid[i])
    break;
  }
 } else {
  for (i = index - 1; i >= 0; i--) {
   if (cal_sram_valid[i])
    break;
  }
 }

 if ((i >= ATH_AIC_MAX_BT_CHANNEL) || (i < 0))
  i = -1;

 return i;
}
