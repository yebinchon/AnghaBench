
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ice_hw {int dummy; } ;
struct ice_aqc_get_set_rss_keys {int dummy; } ;
struct ice_aqc_get_set_rss_key {int vsi_id; } ;
struct TYPE_2__ {struct ice_aqc_get_set_rss_key get_set_rss_key; } ;
struct ice_aq_desc {int flags; TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQC_GSET_RSS_KEY_VSI_ID_M ;
 int ICE_AQC_GSET_RSS_KEY_VSI_ID_S ;
 int ICE_AQC_GSET_RSS_KEY_VSI_VALID ;
 int ICE_AQ_FLAG_RD ;
 int cpu_to_le16 (int) ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,struct ice_aqc_get_set_rss_keys*,int,int *) ;
 int ice_aqc_opc_get_rss_key ;
 int ice_aqc_opc_set_rss_key ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

__attribute__((used)) static enum
ice_status __ice_aq_get_set_rss_key(struct ice_hw *hw, u16 vsi_id,
        struct ice_aqc_get_set_rss_keys *key,
        bool set)
{
 struct ice_aqc_get_set_rss_key *cmd_resp;
 u16 key_size = sizeof(*key);
 struct ice_aq_desc desc;

 cmd_resp = &desc.params.get_set_rss_key;

 if (set) {
  ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_rss_key);
  desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
 } else {
  ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_rss_key);
 }

 cmd_resp->vsi_id = cpu_to_le16(((vsi_id <<
      ICE_AQC_GSET_RSS_KEY_VSI_ID_S) &
     ICE_AQC_GSET_RSS_KEY_VSI_ID_M) |
           ICE_AQC_GSET_RSS_KEY_VSI_VALID);

 return ice_aq_send_cmd(hw, &desc, key, key_size, ((void*)0));
}
