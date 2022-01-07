
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void set_pending_timer_val(int *val, u32 us)
{
 u8 mult = 0;
 u8 shift = 0;

 if (us >= 0x3f) {
  mult = 1;
  shift = 2;
 }
 if (us >= 0x3f * 4) {
  mult = 2;
  shift = 4;
 }
 if (us >= 0x3f * 16) {
  mult = 3;
  shift = 6;
 }

 *val = (mult << 6) | ((us >> shift) & 0x3f);
}
