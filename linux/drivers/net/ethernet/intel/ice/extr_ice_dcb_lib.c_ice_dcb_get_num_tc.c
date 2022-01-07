
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* prio_table; } ;
struct ice_dcbx_cfg {TYPE_1__ etscfg; } ;


 int BIT (int) ;
 int CEE_DCBX_MAX_PRIO ;
 int IEEE_8021QAZ_MAX_TCS ;
 int pr_err (char*) ;

u8 ice_dcb_get_num_tc(struct ice_dcbx_cfg *dcbcfg)
{
 bool tc_unused = 0;
 u8 num_tc = 0;
 u8 ret = 0;
 int i;




 for (i = 0; i < CEE_DCBX_MAX_PRIO; i++)
  num_tc |= BIT(dcbcfg->etscfg.prio_table[i]);


 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  if (num_tc & BIT(i)) {
   if (!tc_unused) {
    ret++;
   } else {
    pr_err("Non-contiguous TCs - Disabling DCB\n");
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
