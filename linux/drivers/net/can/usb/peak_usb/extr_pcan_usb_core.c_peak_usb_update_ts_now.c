
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct peak_time_ref {int ts_dev_2; int ts_dev_1; int ts_total; TYPE_1__* adapter; int tv_host; } ;
struct TYPE_2__ {int ts_used_bits; } ;


 scalar_t__ ktime_to_ns (int ) ;

void peak_usb_update_ts_now(struct peak_time_ref *time_ref, u32 ts_now)
{
 time_ref->ts_dev_2 = ts_now;


 if (ktime_to_ns(time_ref->tv_host) > 0) {
  u32 delta_ts = time_ref->ts_dev_2 - time_ref->ts_dev_1;

  if (time_ref->ts_dev_2 < time_ref->ts_dev_1)
   delta_ts &= (1 << time_ref->adapter->ts_used_bits) - 1;

  time_ref->ts_total += delta_ts;
 }
}
