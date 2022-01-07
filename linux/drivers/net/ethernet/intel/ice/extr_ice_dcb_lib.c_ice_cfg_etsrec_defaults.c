
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int maxtcs; int* tcbwtable; int * tsatable; } ;
struct ice_dcbx_cfg {TYPE_1__ etsrec; } ;
struct ice_port_info {struct ice_dcbx_cfg local_dcbx_cfg; } ;


 int ICE_IEEE_TSA_ETS ;
 int ICE_IEEE_TSA_STRICT ;
 size_t ICE_MAX_TRAFFIC_CLASS ;

__attribute__((used)) static void ice_cfg_etsrec_defaults(struct ice_port_info *pi)
{
 struct ice_dcbx_cfg *dcbcfg = &pi->local_dcbx_cfg;
 u8 i;


 if (dcbcfg->etsrec.maxtcs)
  return;


 dcbcfg->etsrec.maxtcs = 1;
 for (i = 0; i < ICE_MAX_TRAFFIC_CLASS; i++) {
  dcbcfg->etsrec.tcbwtable[i] = i ? 0 : 100;
  dcbcfg->etsrec.tsatable[i] = i ? ICE_IEEE_TSA_STRICT :
       ICE_IEEE_TSA_ETS;
 }
}
