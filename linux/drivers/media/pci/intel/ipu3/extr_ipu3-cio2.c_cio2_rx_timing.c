
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s64 ;
typedef int s32 ;


 scalar_t__ LIMIT_SHIFT ;
 scalar_t__ S32_MAX ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static s32 cio2_rx_timing(s32 a, s32 b, s64 freq, int def)
{
 const u32 accinv = 16;
 const u32 uiinv = 500000000;
 s32 r;

 freq >>= LIMIT_SHIFT;

 if (WARN_ON(freq <= 0 || freq > S32_MAX))
  return def;




 r = accinv * b * (uiinv >> LIMIT_SHIFT);
 r = r / (s32)freq;

 r += accinv * a;

 return r;
}
