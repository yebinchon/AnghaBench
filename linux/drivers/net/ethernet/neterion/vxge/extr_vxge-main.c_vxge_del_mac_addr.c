
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxgedev {struct vxge_vpath* vpaths; } ;
struct vxge_vpath {int device_id; int handle; } ;
struct macInfo {size_t vpath_no; int macmask; int macaddr; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;


 int VXGE_ERR ;
 int VXGE_HW_OK ;
 int vxge_debug_init (int ,char*,int ) ;
 int vxge_hw_vpath_mac_addr_delete (int ,int ,int ) ;
 int vxge_mac_list_del (struct vxge_vpath*,struct macInfo*) ;

__attribute__((used)) static enum vxge_hw_status
vxge_del_mac_addr(struct vxgedev *vdev, struct macInfo *mac)
{
 enum vxge_hw_status status = VXGE_HW_OK;
 struct vxge_vpath *vpath;

 vpath = &vdev->vpaths[mac->vpath_no];
 status = vxge_hw_vpath_mac_addr_delete(vpath->handle, mac->macaddr,
      mac->macmask);
 if (status != VXGE_HW_OK) {
  vxge_debug_init(VXGE_ERR,
   "DA config delete entry failed for vpath:%d",
   vpath->device_id);
 } else
  vxge_mac_list_del(vpath, mac);
 return status;
}
