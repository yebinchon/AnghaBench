
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_aqc_get_set_rss_lut {int flags; int vsi_id; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {int flags; TYPE_1__ params; } ;
typedef int i40e_status ;


 int I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK ;
 int I40E_AQC_SET_RSS_LUT_TABLE_TYPE_PF ;
 int I40E_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT ;
 int I40E_AQC_SET_RSS_LUT_TABLE_TYPE_VSI ;
 int I40E_AQC_SET_RSS_LUT_VSI_ID_MASK ;
 int I40E_AQC_SET_RSS_LUT_VSI_ID_SHIFT ;
 scalar_t__ I40E_AQC_SET_RSS_LUT_VSI_VALID ;
 scalar_t__ I40E_AQ_FLAG_BUF ;
 scalar_t__ I40E_AQ_FLAG_RD ;
 int cpu_to_le16 (int) ;
 int i40e_aqc_opc_get_rss_lut ;
 int i40e_aqc_opc_set_rss_lut ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int,int *) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

__attribute__((used)) static i40e_status i40e_aq_get_set_rss_lut(struct i40e_hw *hw,
        u16 vsi_id, bool pf_lut,
        u8 *lut, u16 lut_size,
        bool set)
{
 i40e_status status;
 struct i40e_aq_desc desc;
 struct i40e_aqc_get_set_rss_lut *cmd_resp =
     (struct i40e_aqc_get_set_rss_lut *)&desc.params.raw;

 if (set)
  i40e_fill_default_direct_cmd_desc(&desc,
        i40e_aqc_opc_set_rss_lut);
 else
  i40e_fill_default_direct_cmd_desc(&desc,
        i40e_aqc_opc_get_rss_lut);


 desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_BUF);
 desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_RD);

 cmd_resp->vsi_id =
   cpu_to_le16((u16)((vsi_id <<
       I40E_AQC_SET_RSS_LUT_VSI_ID_SHIFT) &
       I40E_AQC_SET_RSS_LUT_VSI_ID_MASK));
 cmd_resp->vsi_id |= cpu_to_le16((u16)I40E_AQC_SET_RSS_LUT_VSI_VALID);

 if (pf_lut)
  cmd_resp->flags |= cpu_to_le16((u16)
     ((I40E_AQC_SET_RSS_LUT_TABLE_TYPE_PF <<
     I40E_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT) &
     I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK));
 else
  cmd_resp->flags |= cpu_to_le16((u16)
     ((I40E_AQC_SET_RSS_LUT_TABLE_TYPE_VSI <<
     I40E_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT) &
     I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK));

 status = i40e_asq_send_command(hw, &desc, lut, lut_size, ((void*)0));

 return status;
}
