
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* prioritytable; } ;
struct i40e_dcbx_config {TYPE_1__ etscfg; } ;


 int BIT (int) ;
 int I40E_MAX_TRAFFIC_CLASS ;
 int I40E_MAX_USER_PRIORITY ;
 int pr_err (char*) ;

__attribute__((used)) static u8 i40e_dcb_get_num_tc(struct i40e_dcbx_config *dcbcfg)
{
 int i, tc_unused = 0;
 u8 num_tc = 0;
 u8 ret = 0;





 for (i = 0; i < I40E_MAX_USER_PRIORITY; i++)
  num_tc |= BIT(dcbcfg->etscfg.prioritytable[i]);




 for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
  if (num_tc & BIT(i)) {
   if (!tc_unused) {
    ret++;
   } else {
    pr_err("Non-contiguous TC - Disabling DCB\n");
    return 1;
   }
  } else {
   tc_unused = 1;
  }
 }


 if (!ret)
  ret = 1;

 return ret;
}
