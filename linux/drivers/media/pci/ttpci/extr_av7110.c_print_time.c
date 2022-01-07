
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int s64 ;


 int ktime_get_real_ts64 (struct timespec64*) ;
 int printk (char*,char*,int ,int ) ;

__attribute__((used)) static inline void print_time(char *s)
{





}
