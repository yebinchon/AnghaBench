
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum virtchnl_status_code { ____Placeholder_virtchnl_status_code } virtchnl_status_code ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
 int VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR ;
 int VIRTCHNL_STATUS_ERR_NOT_SUPPORTED ;
 int VIRTCHNL_STATUS_ERR_NO_MEMORY ;
 int VIRTCHNL_STATUS_ERR_PARAM ;
 int VIRTCHNL_STATUS_SUCCESS ;

__attribute__((used)) static enum virtchnl_status_code ice_err_to_virt_err(enum ice_status ice_err)
{
 switch (ice_err) {
 case 128:
  return VIRTCHNL_STATUS_SUCCESS;
 case 137:
 case 133:
 case 135:
 case 130:
 case 136:
  return VIRTCHNL_STATUS_ERR_PARAM;
 case 131:
  return VIRTCHNL_STATUS_ERR_NO_MEMORY;
 case 132:
 case 129:
 case 134:
 case 141:
 case 138:
 case 140:
 case 139:
 case 142:
  return VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
 default:
  return VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
 }
}
