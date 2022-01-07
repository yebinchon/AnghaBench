
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;



__attribute__((used)) static s32
il4965_math_div_round(s32 num, s32 denom, s32 * res)
{
 s32 sign = 1;

 if (num < 0) {
  sign = -sign;
  num = -num;
 }
 if (denom < 0) {
  sign = -sign;
  denom = -denom;
 }
 *res = ((num * 2 + denom) / (denom * 2)) * sign;

 return 1;
}
