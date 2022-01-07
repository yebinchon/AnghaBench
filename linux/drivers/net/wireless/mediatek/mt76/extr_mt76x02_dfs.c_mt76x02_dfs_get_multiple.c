
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;

__attribute__((used)) static int mt76x02_dfs_get_multiple(int val, int frac, int margin)
{
 int remainder, factor;

 if (!frac)
  return 0;

 if (abs(val - frac) <= margin)
  return 1;

 factor = val / frac;
 remainder = val % frac;

 if (remainder > margin) {
  if ((frac - remainder) <= margin)
   factor++;
  else
   factor = 0;
 }
 return factor;
}
