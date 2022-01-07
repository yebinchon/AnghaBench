
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef scalar_t__ int16_t ;



int16_t ath9k_hw_interpolate(u16 target, u16 srcLeft, u16 srcRight,
        int16_t targetLeft, int16_t targetRight)
{
 int16_t rv;

 if (srcRight == srcLeft) {
  rv = targetLeft;
 } else {
  rv = (int16_t) (((target - srcLeft) * targetRight +
     (srcRight - target) * targetLeft) /
    (srcRight - srcLeft));
 }
 return rv;
}
