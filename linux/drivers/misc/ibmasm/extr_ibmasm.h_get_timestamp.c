
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;


 int NSEC_PER_USEC ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 int sprintf (char*,char*,long long,int) ;

__attribute__((used)) static inline char *get_timestamp(char *buf)
{
 struct timespec64 now;

 ktime_get_real_ts64(&now);
 sprintf(buf, "%llu.%.08lu", (long long)now.tv_sec,
    now.tv_nsec / NSEC_PER_USEC);
 return buf;
}
