
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int next ;


 unsigned long HZ ;
 scalar_t__ MLX5_HEALTH_POLL_INTERVAL ;
 int get_random_bytes (unsigned long*,int) ;
 scalar_t__ jiffies ;

__attribute__((used)) static unsigned long get_next_poll_jiffies(void)
{
 unsigned long next;

 get_random_bytes(&next, sizeof(next));
 next %= HZ;
 next += jiffies + MLX5_HEALTH_POLL_INTERVAL;

 return next;
}
