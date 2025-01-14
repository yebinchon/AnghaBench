
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_11__ {int * qs_handle; } ;
struct TYPE_7__ {int hw; } ;
struct TYPE_8__ {TYPE_1__ qopt; } ;
struct i40e_vsi {TYPE_5__ info; int seid; TYPE_2__ mqprio_qopt; struct i40e_pf* back; } ;
struct TYPE_10__ {int asq_last_status; } ;
struct TYPE_12__ {TYPE_4__ aq; } ;
struct i40e_pf {int flags; TYPE_6__ hw; TYPE_3__* pdev; } ;
struct i40e_aqc_configure_vsi_tc_bw_data {int * qs_handles; void** tc_bw_credits; void* tc_valid_bits; } ;
typedef int i40e_status ;
struct TYPE_9__ {int dev; } ;


 int EINVAL ;
 int I40E_FLAG_DCB_ENABLED ;
 int I40E_FLAG_TC_MQPRIO ;
 int I40E_MAX_TRAFFIC_CLASS ;
 int dev_info (int *,char*,int ) ;
 int i40e_aq_config_vsi_tc_bw (TYPE_6__*,int ,struct i40e_aqc_configure_vsi_tc_bw_data*,int *) ;
 int i40e_set_bw_limit (struct i40e_vsi*,int ,int ) ;

__attribute__((used)) static int i40e_vsi_configure_bw_alloc(struct i40e_vsi *vsi, u8 enabled_tc,
           u8 *bw_share)
{
 struct i40e_aqc_configure_vsi_tc_bw_data bw_data;
 struct i40e_pf *pf = vsi->back;
 i40e_status ret;
 int i;


 if (pf->flags & I40E_FLAG_TC_MQPRIO)
  return 0;
 if (!vsi->mqprio_qopt.qopt.hw && !(pf->flags & I40E_FLAG_DCB_ENABLED)) {
  ret = i40e_set_bw_limit(vsi, vsi->seid, 0);
  if (ret)
   dev_info(&pf->pdev->dev,
     "Failed to reset tx rate for vsi->seid %u\n",
     vsi->seid);
  return ret;
 }
 bw_data.tc_valid_bits = enabled_tc;
 for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++)
  bw_data.tc_bw_credits[i] = bw_share[i];

 ret = i40e_aq_config_vsi_tc_bw(&pf->hw, vsi->seid, &bw_data, ((void*)0));
 if (ret) {
  dev_info(&pf->pdev->dev,
    "AQ command Config VSI BW allocation per TC failed = %d\n",
    pf->hw.aq.asq_last_status);
  return -EINVAL;
 }

 for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++)
  vsi->info.qs_handle[i] = bw_data.qs_handles[i];

 return 0;
}
