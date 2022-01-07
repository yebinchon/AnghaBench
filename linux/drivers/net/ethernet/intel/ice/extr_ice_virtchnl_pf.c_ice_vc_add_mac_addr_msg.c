
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ice_vf {int dummy; } ;


 int ice_vc_handle_mac_addr_msg (struct ice_vf*,int *,int) ;

__attribute__((used)) static int ice_vc_add_mac_addr_msg(struct ice_vf *vf, u8 *msg)
{
 return ice_vc_handle_mac_addr_msg(vf, msg, 1);
}
