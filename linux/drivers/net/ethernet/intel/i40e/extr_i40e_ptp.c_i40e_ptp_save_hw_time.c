
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int flags; int ptp_reset_start; int ptp_prev_hw_time; int ptp_caps; } ;


 int I40E_FLAG_PTP ;
 int i40e_ptp_gettimex (int *,int *,int *) ;
 int ktime_get () ;

void i40e_ptp_save_hw_time(struct i40e_pf *pf)
{

 if (!(pf->flags & I40E_FLAG_PTP))
  return;

 i40e_ptp_gettimex(&pf->ptp_caps, &pf->ptp_prev_hw_time, ((void*)0));

 pf->ptp_reset_start = ktime_get();
}
