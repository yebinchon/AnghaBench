
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge {int* timer_val; } ;


 int ARRAY_SIZE (int*) ;
 int INT_MAX ;

__attribute__((used)) static int closest_timer(const struct sge *s, int us)
{
 int i, timer_idx = 0, min_delta = INT_MAX;

 for (i = 0; i < ARRAY_SIZE(s->timer_val); i++) {
  int delta = us - s->timer_val[i];
  if (delta < 0)
   delta = -delta;
  if (delta < min_delta) {
   min_delta = delta;
   timer_idx = i;
  }
 }
 return timer_idx;
}
