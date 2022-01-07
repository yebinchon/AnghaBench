
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int check_clock (int,int,int,int,int*,int*,int*) ;
 int do_div (int,int) ;
 int ixp4xx_timer_freq ;

__attribute__((used)) static void find_best_clock(u32 rate, u32 *best, u32 *reg)
{
 u32 a, b, diff = 0xFFFFFFFF;

 a = ixp4xx_timer_freq / rate;

 if (a > 0x3FF) {
  check_clock(rate, 0x3FF, 1, 1, best, &diff, reg);
  return;
 }
 if (a == 0) {
  a = 1;
  rate = ixp4xx_timer_freq;
 }

 if (rate * a == ixp4xx_timer_freq) {
  check_clock(rate, a - 1, 1, 1, best, &diff, reg);
  return;
 }

 for (b = 0; b < 0x400; b++) {
  u64 c = (b + 1) * (u64)rate;
  do_div(c, ixp4xx_timer_freq - rate * a);
  c--;
  if (c >= 0xFFF) {
   if (b == 0 &&
       !check_clock(rate, a - 1, 1, 1, best, &diff, reg))
    return;
   check_clock(rate, a, b, 0xFFF, best, &diff, reg);
   return;
  }
  if (!check_clock(rate, a, b, c, best, &diff, reg))
   return;
  if (!check_clock(rate, a, b, c + 1, best, &diff, reg))
   return;
 }
}
