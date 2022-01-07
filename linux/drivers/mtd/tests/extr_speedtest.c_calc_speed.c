
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int erasesize; } ;


 int do_div (int,long) ;
 int finish ;
 scalar_t__ goodebcnt ;
 long ktime_ms_delta (int ,int ) ;
 TYPE_1__* mtd ;
 int start ;

__attribute__((used)) static long calc_speed(void)
{
 uint64_t k;
 long ms;

 ms = ktime_ms_delta(finish, start);
 if (ms == 0)
  return 0;
 k = (uint64_t)goodebcnt * (mtd->erasesize / 1024) * 1000;
 do_div(k, ms);
 return k;
}
