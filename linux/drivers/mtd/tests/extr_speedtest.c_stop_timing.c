
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int finish ;
 int ktime_get () ;

__attribute__((used)) static inline void stop_timing(void)
{
 finish = ktime_get();
}
