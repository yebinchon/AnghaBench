
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fddiSMTCF_State; } ;
struct s_smc {TYPE_1__ mib; } ;


 int PA ;
 int PB ;
 scalar_t__ SC10_C_WRAP_B ;
 scalar_t__ SC4_THRU_A ;

int cfm_get_mac_output(struct s_smc *smc)
{
 return (smc->mib.fddiSMTCF_State == SC10_C_WRAP_B ||
  smc->mib.fddiSMTCF_State == SC4_THRU_A) ? PB : PA;
}
