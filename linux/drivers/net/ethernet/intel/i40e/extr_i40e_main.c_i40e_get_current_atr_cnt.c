
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i40e_pf {scalar_t__ fdir_pf_active_filters; } ;


 scalar_t__ i40e_get_current_fd_count (struct i40e_pf*) ;

u32 i40e_get_current_atr_cnt(struct i40e_pf *pf)
{
 return i40e_get_current_fd_count(pf) - pf->fdir_pf_active_filters;
}
