
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tot_duration; int max_duration; void* last_duration; void* min_duration; int hw_start; } ;
struct bdisp_dev {TYPE_1__ dbg; } ;
typedef void* s64 ;


 int ktime_get () ;
 void* ktime_us_delta (int ,int ) ;
 int max (void*,int ) ;
 void* min (void*,void*) ;

void bdisp_dbg_perf_end(struct bdisp_dev *bdisp)
{
 s64 time_us;

 time_us = ktime_us_delta(ktime_get(), bdisp->dbg.hw_start);

 if (!bdisp->dbg.min_duration)
  bdisp->dbg.min_duration = time_us;
 else
  bdisp->dbg.min_duration = min(time_us, bdisp->dbg.min_duration);

 bdisp->dbg.last_duration = time_us;
 bdisp->dbg.max_duration = max(time_us, bdisp->dbg.max_duration);
 bdisp->dbg.tot_duration += time_us;
}
