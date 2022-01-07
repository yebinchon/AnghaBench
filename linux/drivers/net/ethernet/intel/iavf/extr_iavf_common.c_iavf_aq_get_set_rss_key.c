
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct iavf_hw {int dummy; } ;
struct iavf_aqc_get_set_rss_key_data {int dummy; } ;
struct iavf_aqc_get_set_rss_key {int vsi_id; } ;
struct TYPE_2__ {int raw; } ;
struct iavf_aq_desc {int flags; TYPE_1__ params; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int IAVF_AQC_SET_RSS_KEY_VSI_ID_MASK ;
 int IAVF_AQC_SET_RSS_KEY_VSI_ID_SHIFT ;
 scalar_t__ IAVF_AQC_SET_RSS_KEY_VSI_VALID ;
 scalar_t__ IAVF_AQ_FLAG_BUF ;
 scalar_t__ IAVF_AQ_FLAG_RD ;
 int cpu_to_le16 (int) ;
 int iavf_aqc_opc_get_rss_key ;
 int iavf_aqc_opc_set_rss_key ;
 int iavf_asq_send_command (struct iavf_hw*,struct iavf_aq_desc*,struct iavf_aqc_get_set_rss_key_data*,int,int *) ;
 int iavf_fill_default_direct_cmd_desc (struct iavf_aq_desc*,int ) ;

__attribute__((used)) static enum
iavf_status iavf_aq_get_set_rss_key(struct iavf_hw *hw, u16 vsi_id,
        struct iavf_aqc_get_set_rss_key_data *key,
        bool set)
{
 enum iavf_status status;
 struct iavf_aq_desc desc;
 struct iavf_aqc_get_set_rss_key *cmd_resp =
   (struct iavf_aqc_get_set_rss_key *)&desc.params.raw;
 u16 key_size = sizeof(struct iavf_aqc_get_set_rss_key_data);

 if (set)
  iavf_fill_default_direct_cmd_desc(&desc,
        iavf_aqc_opc_set_rss_key);
 else
  iavf_fill_default_direct_cmd_desc(&desc,
        iavf_aqc_opc_get_rss_key);


 desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_BUF);
 desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_RD);

 cmd_resp->vsi_id =
   cpu_to_le16((u16)((vsi_id <<
       IAVF_AQC_SET_RSS_KEY_VSI_ID_SHIFT) &
       IAVF_AQC_SET_RSS_KEY_VSI_ID_MASK));
 cmd_resp->vsi_id |= cpu_to_le16((u16)IAVF_AQC_SET_RSS_KEY_VSI_VALID);

 status = iavf_asq_send_command(hw, &desc, key, key_size, ((void*)0));

 return status;
}
