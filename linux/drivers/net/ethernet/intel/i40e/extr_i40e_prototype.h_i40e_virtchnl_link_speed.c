
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum virtchnl_link_speed { ____Placeholder_virtchnl_link_speed } virtchnl_link_speed ;
typedef enum i40e_aq_link_speed { ____Placeholder_i40e_aq_link_speed } i40e_aq_link_speed ;
 int VIRTCHNL_LINK_SPEED_100MB ;
 int VIRTCHNL_LINK_SPEED_10GB ;
 int VIRTCHNL_LINK_SPEED_1GB ;
 int VIRTCHNL_LINK_SPEED_20GB ;
 int VIRTCHNL_LINK_SPEED_25GB ;
 int VIRTCHNL_LINK_SPEED_2_5GB ;
 int VIRTCHNL_LINK_SPEED_40GB ;
 int VIRTCHNL_LINK_SPEED_5GB ;
 int VIRTCHNL_LINK_SPEED_UNKNOWN ;

__attribute__((used)) static inline enum virtchnl_link_speed
i40e_virtchnl_link_speed(enum i40e_aq_link_speed link_speed)
{
 switch (link_speed) {
 case 136:
  return VIRTCHNL_LINK_SPEED_100MB;
 case 134:
  return VIRTCHNL_LINK_SPEED_1GB;
 case 131:
  return VIRTCHNL_LINK_SPEED_2_5GB;
 case 129:
  return VIRTCHNL_LINK_SPEED_5GB;
 case 135:
  return VIRTCHNL_LINK_SPEED_10GB;
 case 130:
  return VIRTCHNL_LINK_SPEED_40GB;
 case 133:
  return VIRTCHNL_LINK_SPEED_20GB;
 case 132:
  return VIRTCHNL_LINK_SPEED_25GB;
 case 128:
 default:
  return VIRTCHNL_LINK_SPEED_UNKNOWN;
 }
}
