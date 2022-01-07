
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct peak_time_ref {int ts_dev_2; int ts_dev_1; int tick_count; void* tv_host; scalar_t__ ts_total; void* tv_host_0; } ;
typedef void* ktime_t ;


 unsigned long long NSEC_PER_SEC ;
 void* ktime_get () ;
 void* ktime_set (int ,int ) ;
 void* ktime_sub (void*,void*) ;
 unsigned long long ktime_to_ns (void*) ;
 int peak_usb_update_ts_now (struct peak_time_ref*,int ) ;

void peak_usb_set_ts_now(struct peak_time_ref *time_ref, u32 ts_now)
{
 if (ktime_to_ns(time_ref->tv_host_0) == 0) {

  time_ref->tv_host_0 = ktime_get();
  time_ref->tv_host = ktime_set(0, 0);
 } else {





  if (ktime_to_ns(time_ref->tv_host)) {
   ktime_t delta = ktime_sub(time_ref->tv_host,
        time_ref->tv_host_0);
   if (ktime_to_ns(delta) > (4200ull * NSEC_PER_SEC)) {
    time_ref->tv_host_0 = time_ref->tv_host;
    time_ref->ts_total = 0;
   }
  }

  time_ref->tv_host = ktime_get();
  time_ref->tick_count++;
 }

 time_ref->ts_dev_1 = time_ref->ts_dev_2;
 peak_usb_update_ts_now(time_ref, ts_now);
}
