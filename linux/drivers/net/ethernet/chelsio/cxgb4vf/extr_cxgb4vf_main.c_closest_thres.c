
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge {int* counter_val; } ;


 int ARRAY_SIZE (int*) ;
 int INT_MAX ;

__attribute__((used)) static int closest_thres(const struct sge *s, int thres)
{
 int i, delta, pktcnt_idx = 0, min_delta = INT_MAX;

 for (i = 0; i < ARRAY_SIZE(s->counter_val); i++) {
  delta = thres - s->counter_val[i];
  if (delta < 0)
   delta = -delta;
  if (delta < min_delta) {
   min_delta = delta;
   pktcnt_idx = i;
  }
 }
 return pktcnt_idx;
}
