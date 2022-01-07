
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec64 {unsigned long long tv_sec; int tv_nsec; } ;
typedef unsigned long long s64 ;


 int ktime_get_raw_ts64 (struct timespec64*) ;

u32 ath9k_hw_get_tsf_offset(struct timespec64 *last, struct timespec64 *cur)
{
 struct timespec64 ts;
 s64 usec;

 if (!cur) {
  ktime_get_raw_ts64(&ts);
  cur = &ts;
 }

 usec = cur->tv_sec * 1000000ULL + cur->tv_nsec / 1000;
 usec -= last->tv_sec * 1000000ULL + last->tv_nsec / 1000;

 return (u32) usec;
}
