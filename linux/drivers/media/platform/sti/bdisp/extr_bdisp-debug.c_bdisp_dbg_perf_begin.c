
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_start; } ;
struct bdisp_dev {TYPE_1__ dbg; } ;


 int ktime_get () ;

void bdisp_dbg_perf_begin(struct bdisp_dev *bdisp)
{
 bdisp->dbg.hw_start = ktime_get();
}
