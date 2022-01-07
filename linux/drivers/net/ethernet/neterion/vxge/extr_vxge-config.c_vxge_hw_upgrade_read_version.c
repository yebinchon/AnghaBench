
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct __vxge_hw_virtualpath {int dummy; } ;
struct __vxge_hw_device {size_t first_vp_id; struct __vxge_hw_virtualpath* virtual_paths; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;


 int VXGE_HW_FW_UPGRADE_ACTION ;
 int VXGE_HW_FW_UPGRADE_MEMO ;
 int VXGE_HW_FW_UPGRADE_OFFSET_READ ;
 int VXGE_HW_OK ;
 int VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_FW_VER_BUILD (int ) ;
 int VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_FW_VER_MAJOR (int ) ;
 int VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_FW_VER_MINOR (int ) ;
 int vxge_hw_vpath_fw_api (struct __vxge_hw_virtualpath*,int ,int ,int ,int *,int *,int *) ;

enum vxge_hw_status
vxge_hw_upgrade_read_version(struct __vxge_hw_device *hldev, u32 *major,
        u32 *minor, u32 *build)
{
 u64 data0 = 0, data1 = 0, steer_ctrl = 0;
 struct __vxge_hw_virtualpath *vpath;
 enum vxge_hw_status status;

 vpath = &hldev->virtual_paths[hldev->first_vp_id];

 status = vxge_hw_vpath_fw_api(vpath,
          VXGE_HW_FW_UPGRADE_ACTION,
          VXGE_HW_FW_UPGRADE_MEMO,
          VXGE_HW_FW_UPGRADE_OFFSET_READ,
          &data0, &data1, &steer_ctrl);
 if (status != VXGE_HW_OK)
  return status;

 *major = VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_FW_VER_MAJOR(data0);
 *minor = VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_FW_VER_MINOR(data0);
 *build = VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_FW_VER_BUILD(data0);

 return status;
}
