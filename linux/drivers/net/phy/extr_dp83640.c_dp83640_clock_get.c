
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dp83640_clock {int clock_lock; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static struct dp83640_clock *dp83640_clock_get(struct dp83640_clock *clock)
{
 if (clock)
  mutex_lock(&clock->clock_lock);
 return clock;
}
