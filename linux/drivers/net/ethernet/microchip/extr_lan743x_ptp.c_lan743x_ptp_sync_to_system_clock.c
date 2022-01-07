
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; int tv_sec; } ;
struct lan743x_adapter {int dummy; } ;


 int ktime_get_clocktai_ts64 (struct timespec64*) ;
 int lan743x_ptp_clock_set (struct lan743x_adapter*,int ,int ,int ) ;

__attribute__((used)) static void lan743x_ptp_sync_to_system_clock(struct lan743x_adapter *adapter)
{
 struct timespec64 ts;

 ktime_get_clocktai_ts64(&ts);

 lan743x_ptp_clock_set(adapter, ts.tv_sec, ts.tv_nsec, 0);
}
