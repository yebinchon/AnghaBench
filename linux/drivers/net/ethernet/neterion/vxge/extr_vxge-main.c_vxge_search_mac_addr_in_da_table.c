
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxge_vpath {int handle; int device_id; } ;
struct macInfo {int macaddr; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;


 int ETH_ALEN ;
 int VXGE_ERR ;
 int VXGE_HW_OK ;
 int ether_addr_equal (int ,unsigned char*) ;
 int vxge_debug_init (int ,char*,int ) ;
 int vxge_hw_vpath_mac_addr_get (int ,unsigned char*,unsigned char*) ;
 int vxge_hw_vpath_mac_addr_get_next (int ,unsigned char*,unsigned char*) ;

__attribute__((used)) static enum vxge_hw_status
vxge_search_mac_addr_in_da_table(struct vxge_vpath *vpath, struct macInfo *mac)
{
 enum vxge_hw_status status = VXGE_HW_OK;
 unsigned char macmask[ETH_ALEN];
 unsigned char macaddr[ETH_ALEN];

 status = vxge_hw_vpath_mac_addr_get(vpath->handle,
    macaddr, macmask);
 if (status != VXGE_HW_OK) {
  vxge_debug_init(VXGE_ERR,
   "DA config list entry failed for vpath:%d",
   vpath->device_id);
  return status;
 }

 while (!ether_addr_equal(mac->macaddr, macaddr)) {
  status = vxge_hw_vpath_mac_addr_get_next(vpath->handle,
    macaddr, macmask);
  if (status != VXGE_HW_OK)
   break;
 }

 return status;
}
