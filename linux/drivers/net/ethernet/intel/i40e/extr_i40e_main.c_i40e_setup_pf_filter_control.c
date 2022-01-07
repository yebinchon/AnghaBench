
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_filter_control_settings {int enable_fdir; int enable_ethtype; int enable_macvlan; int hash_lut_size; } ;
struct i40e_pf {int flags; int hw; struct i40e_filter_control_settings filter_settings; } ;


 int ENOENT ;
 int I40E_FLAG_FD_ATR_ENABLED ;
 int I40E_FLAG_FD_SB_ENABLED ;
 int I40E_HASH_LUT_SIZE_128 ;
 scalar_t__ i40e_set_filter_control (int *,struct i40e_filter_control_settings*) ;

__attribute__((used)) static int i40e_setup_pf_filter_control(struct i40e_pf *pf)
{
 struct i40e_filter_control_settings *settings = &pf->filter_settings;

 settings->hash_lut_size = I40E_HASH_LUT_SIZE_128;


 if (pf->flags & (I40E_FLAG_FD_SB_ENABLED | I40E_FLAG_FD_ATR_ENABLED))
  settings->enable_fdir = 1;


 settings->enable_ethtype = 1;
 settings->enable_macvlan = 1;

 if (i40e_set_filter_control(&pf->hw, settings))
  return -ENOENT;

 return 0;
}
