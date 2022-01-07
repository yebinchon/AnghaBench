
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct macb {int tsu_incr; int ptp_clock_info; } ;


 int TA ;
 int gem_tsu_incr_set (struct macb*,int *) ;
 int gem_tsu_set_time (int *,struct timespec64*) ;
 int gem_writel (struct macb*,int ,int ) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 struct timespec64 ns_to_timespec64 (int ) ;

__attribute__((used)) static void gem_ptp_init_tsu(struct macb *bp)
{
 struct timespec64 ts;


 ts = ns_to_timespec64(ktime_to_ns(ktime_get_real()));


 gem_tsu_set_time(&bp->ptp_clock_info, &ts);


 gem_tsu_incr_set(bp, &bp->tsu_incr);

 gem_writel(bp, TA, 0);
}
