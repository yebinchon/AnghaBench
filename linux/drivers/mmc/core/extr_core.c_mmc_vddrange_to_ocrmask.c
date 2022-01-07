
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mmc_vdd_to_ocrbitnum (int,int) ;

u32 mmc_vddrange_to_ocrmask(int vdd_min, int vdd_max)
{
 u32 mask = 0;

 if (vdd_max < vdd_min)
  return 0;


 vdd_max = mmc_vdd_to_ocrbitnum(vdd_max, 0);
 if (vdd_max < 0)
  return 0;


 vdd_min = mmc_vdd_to_ocrbitnum(vdd_min, 1);
 if (vdd_min < 0)
  return 0;


 while (vdd_max >= vdd_min)
  mask |= 1 << vdd_max--;

 return mask;
}
