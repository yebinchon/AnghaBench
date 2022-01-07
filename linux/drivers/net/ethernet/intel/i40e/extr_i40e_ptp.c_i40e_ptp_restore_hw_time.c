
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int ptp_prev_hw_time; int ptp_caps; int ptp_reset_start; } ;
typedef int ktime_t ;


 int i40e_ptp_settime (int *,int *) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 int timespec64_add_ns (int *,int ) ;

void i40e_ptp_restore_hw_time(struct i40e_pf *pf)
{
 ktime_t delta = ktime_sub(ktime_get(), pf->ptp_reset_start);


 timespec64_add_ns(&pf->ptp_prev_hw_time, ktime_to_ns(delta));


 i40e_ptp_settime(&pf->ptp_caps, &pf->ptp_prev_hw_time);
}
