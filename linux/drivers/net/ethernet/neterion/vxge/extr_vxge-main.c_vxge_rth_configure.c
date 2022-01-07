
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int rth_bkt_sz; int rth_algorithm; int rth_hash_type_ipv6ex; int rth_hash_type_tcpipv6ex; int rth_hash_type_ipv6; int rth_hash_type_tcpipv6; int rth_hash_type_ipv4; int rth_hash_type_tcpipv4; } ;
struct vxgedev {int no_of_vpath; TYPE_2__* vpaths; TYPE_1__ config; int vp_handles; } ;
struct vxge_hw_rth_hash_types {int hash_type_ipv6ex_en; int hash_type_tcpipv6ex_en; int hash_type_ipv6_en; int hash_type_tcpipv6_en; int hash_type_ipv4_en; int hash_type_tcpipv4_en; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
struct TYPE_4__ {int device_id; int handle; } ;


 int VXGE_ERR ;
 int VXGE_HW_OK ;
 int vxge_debug_init (int ,char*,int ) ;
 int vxge_hw_vpath_rts_rth_itable_set (int ,int,int*,int*,int) ;
 int vxge_hw_vpath_rts_rth_set (int ,int ,struct vxge_hw_rth_hash_types*,int) ;

__attribute__((used)) static enum vxge_hw_status vxge_rth_configure(struct vxgedev *vdev)
{
 enum vxge_hw_status status = VXGE_HW_OK;
 struct vxge_hw_rth_hash_types hash_types;
 u8 itable[256] = {0};
 u8 mtable[256] = {0};
 int index;






 for (index = 0; index < (1 << vdev->config.rth_bkt_sz); index++) {
  itable[index] = index;
  mtable[index] = index % vdev->no_of_vpath;
 }


 status = vxge_hw_vpath_rts_rth_itable_set(vdev->vp_handles,
      vdev->no_of_vpath,
      mtable, itable,
      vdev->config.rth_bkt_sz);
 if (status != VXGE_HW_OK) {
  vxge_debug_init(VXGE_ERR,
   "RTH indirection table configuration failed "
   "for vpath:%d", vdev->vpaths[0].device_id);
  return status;
 }


 hash_types.hash_type_tcpipv4_en = vdev->config.rth_hash_type_tcpipv4;
 hash_types.hash_type_ipv4_en = vdev->config.rth_hash_type_ipv4;
 hash_types.hash_type_tcpipv6_en = vdev->config.rth_hash_type_tcpipv6;
 hash_types.hash_type_ipv6_en = vdev->config.rth_hash_type_ipv6;
 hash_types.hash_type_tcpipv6ex_en =
     vdev->config.rth_hash_type_tcpipv6ex;
 hash_types.hash_type_ipv6ex_en = vdev->config.rth_hash_type_ipv6ex;







 for (index = 0; index < vdev->no_of_vpath; index++) {
  status = vxge_hw_vpath_rts_rth_set(
    vdev->vpaths[index].handle,
    vdev->config.rth_algorithm,
    &hash_types,
    vdev->config.rth_bkt_sz);
  if (status != VXGE_HW_OK) {
   vxge_debug_init(VXGE_ERR,
    "RTH configuration failed for vpath:%d",
    vdev->vpaths[index].device_id);
   return status;
  }
 }

 return status;
}
