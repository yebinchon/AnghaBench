
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ iscsi; } ;
struct TYPE_4__ {TYPE_1__ func_caps; int local_dcbx_config; } ;
struct i40e_pf {int flags; TYPE_2__ hw; } ;


 int I40E_DEFAULT_TRAFFIC_CLASS ;
 int I40E_FLAG_DCB_ENABLED ;
 int I40E_FLAG_MFP_ENABLED ;
 int I40E_FLAG_TC_MQPRIO ;
 int i40e_dcb_get_enabled_tc (int *) ;
 int i40e_get_iscsi_tc_map (struct i40e_pf*) ;
 int i40e_mqprio_get_enabled_tc (struct i40e_pf*) ;

__attribute__((used)) static u8 i40e_pf_get_tc_map(struct i40e_pf *pf)
{
 if (pf->flags & I40E_FLAG_TC_MQPRIO)
  return i40e_mqprio_get_enabled_tc(pf);




 if (!(pf->flags & I40E_FLAG_DCB_ENABLED))
  return I40E_DEFAULT_TRAFFIC_CLASS;


 if (!(pf->flags & I40E_FLAG_MFP_ENABLED))
  return i40e_dcb_get_enabled_tc(&pf->hw.local_dcbx_config);


 if (pf->hw.func_caps.iscsi)
  return i40e_get_iscsi_tc_map(pf);
 else
  return I40E_DEFAULT_TRAFFIC_CLASS;
}
