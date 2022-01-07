
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct fm10k_vf_info {int vf_flags; int glort; } ;
struct TYPE_2__ {int dglort_map; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int FM10K_DGLORTMAP_NONE ;
 int FM10K_ERR_PARAM ;
 int FM10K_VF_FLAG_NONE_CAPABLE ;
 int fm10k_glort_valid_pf (struct fm10k_hw*,int) ;

__attribute__((used)) static s32 fm10k_iov_set_lport_pf(struct fm10k_hw *hw,
      struct fm10k_vf_info *vf_info,
      u16 lport_idx, u8 flags)
{
 u16 glort = (hw->mac.dglort_map + lport_idx) & FM10K_DGLORTMAP_NONE;


 if (!fm10k_glort_valid_pf(hw, glort))
  return FM10K_ERR_PARAM;

 vf_info->vf_flags = flags | FM10K_VF_FLAG_NONE_CAPABLE;
 vf_info->glort = glort;

 return 0;
}
