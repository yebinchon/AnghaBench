
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emc_timing {scalar_t__ rate; } ;



__attribute__((used)) static int cmp_timings(const void *_a, const void *_b)
{
 const struct emc_timing *a = _a;
 const struct emc_timing *b = _b;

 if (a->rate < b->rate)
  return -1;
 else if (a->rate == b->rate)
  return 0;
 else
  return 1;
}
