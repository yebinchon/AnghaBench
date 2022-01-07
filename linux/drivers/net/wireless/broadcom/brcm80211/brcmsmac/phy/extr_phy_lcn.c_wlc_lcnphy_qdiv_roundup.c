
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32
wlc_lcnphy_qdiv_roundup(u32 dividend, u32 divisor, u8 precision)
{
 u32 quotient, remainder, roundup, rbit;

 quotient = dividend / divisor;
 remainder = dividend % divisor;
 rbit = divisor & 1;
 roundup = (divisor >> 1) + rbit;

 while (precision--) {
  quotient <<= 1;
  if (remainder >= roundup) {
   quotient++;
   remainder = ((remainder - roundup) << 1) + rbit;
  } else {
   remainder <<= 1;
  }
 }

 if (remainder >= roundup)
  quotient++;

 return quotient;
}
