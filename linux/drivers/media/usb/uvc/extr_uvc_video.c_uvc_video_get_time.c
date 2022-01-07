
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ktime_t ;


 scalar_t__ CLOCK_MONOTONIC ;
 int ktime_get () ;
 int ktime_get_real () ;
 scalar_t__ uvc_clock_param ;

__attribute__((used)) static inline ktime_t uvc_video_get_time(void)
{
 if (uvc_clock_param == CLOCK_MONOTONIC)
  return ktime_get();
 else
  return ktime_get_real();
}
