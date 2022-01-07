
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dp83640_clock {int clock_lock; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void dp83640_clock_put(struct dp83640_clock *clock)
{
 mutex_unlock(&clock->clock_lock);
}
