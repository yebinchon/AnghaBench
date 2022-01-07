
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct i40e_vsi {TYPE_3__* back; } ;
struct TYPE_9__ {int * qs_handle; } ;
struct i40e_channel {TYPE_4__ info; int seid; int enabled_tc; } ;
struct i40e_aqc_configure_vsi_tc_bw_data {int * qs_handles; int * tc_bw_credits; int tc_valid_bits; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_7__ {int asq_last_status; } ;
struct TYPE_10__ {TYPE_2__ aq; } ;
struct TYPE_8__ {TYPE_5__ hw; TYPE_1__* pdev; } ;
struct TYPE_6__ {int dev; } ;


 int EINVAL ;
 int I40E_MAX_TRAFFIC_CLASS ;
 int dev_info (int *,char*,int ,int ) ;
 scalar_t__ i40e_aq_config_vsi_tc_bw (TYPE_5__*,int ,struct i40e_aqc_configure_vsi_tc_bw_data*,int *) ;

__attribute__((used)) static int i40e_channel_config_bw(struct i40e_vsi *vsi, struct i40e_channel *ch,
      u8 *bw_share)
{
 struct i40e_aqc_configure_vsi_tc_bw_data bw_data;
 i40e_status ret;
 int i;

 bw_data.tc_valid_bits = ch->enabled_tc;
 for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++)
  bw_data.tc_bw_credits[i] = bw_share[i];

 ret = i40e_aq_config_vsi_tc_bw(&vsi->back->hw, ch->seid,
           &bw_data, ((void*)0));
 if (ret) {
  dev_info(&vsi->back->pdev->dev,
    "Config VSI BW allocation per TC failed, aq_err: %d for new_vsi->seid %u\n",
    vsi->back->hw.aq.asq_last_status, ch->seid);
  return -EINVAL;
 }

 for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++)
  ch->info.qs_handle[i] = bw_data.qs_handles[i];

 return 0;
}
