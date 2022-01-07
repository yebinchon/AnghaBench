
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fm10k_vf_info {int vf_flags; } ;


 int FM10K_VF_FLAG_ALLMULTI_CAPABLE ;
 int FM10K_VF_FLAG_MULTI_CAPABLE ;
 int FM10K_VF_FLAG_NONE_CAPABLE ;
 int FM10K_VF_FLAG_PROMISC_CAPABLE ;

 int FM10K_XCAST_MODE_DISABLE ;




__attribute__((used)) static u8 fm10k_iov_supported_xcast_mode_pf(struct fm10k_vf_info *vf_info,
         u8 mode)
{
 u8 vf_flags = vf_info->vf_flags;


 switch (mode) {
 case 128:
  if (vf_flags & FM10K_VF_FLAG_PROMISC_CAPABLE)
   return 128;

 case 131:
  if (vf_flags & FM10K_VF_FLAG_ALLMULTI_CAPABLE)
   return 131;

 case 130:
  if (vf_flags & FM10K_VF_FLAG_MULTI_CAPABLE)
   return 130;

 case 129:
  if (vf_flags & FM10K_VF_FLAG_NONE_CAPABLE)
   return 129;

 default:
  break;
 }


 return FM10K_XCAST_MODE_DISABLE;
}
