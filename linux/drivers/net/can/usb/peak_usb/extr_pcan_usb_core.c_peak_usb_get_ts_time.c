
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct peak_time_ref {scalar_t__ ts_dev_2; int tv_host_0; TYPE_1__* adapter; scalar_t__ ts_total; int tv_host; } ;
typedef int ktime_t ;
struct TYPE_2__ {int ts_used_bits; int us_per_ts_scale; int us_per_ts_shift; } ;


 int ktime_add_us (int ,int) ;
 int ktime_get () ;
 scalar_t__ ktime_to_ns (int ) ;

void peak_usb_get_ts_time(struct peak_time_ref *time_ref, u32 ts, ktime_t *time)
{

 if (ktime_to_ns(time_ref->tv_host)) {
  u64 delta_us;

  delta_us = ts - time_ref->ts_dev_2;
  if (ts < time_ref->ts_dev_2)
   delta_us &= (1 << time_ref->adapter->ts_used_bits) - 1;

  delta_us += time_ref->ts_total;

  delta_us *= time_ref->adapter->us_per_ts_scale;
  delta_us >>= time_ref->adapter->us_per_ts_shift;

  *time = ktime_add_us(time_ref->tv_host_0, delta_us);
 } else {
  *time = ktime_get();
 }
}
