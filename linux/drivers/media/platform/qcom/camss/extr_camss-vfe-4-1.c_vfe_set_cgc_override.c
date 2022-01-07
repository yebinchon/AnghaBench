
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct vfe_device {int dummy; } ;


 int VFE_0_CGC_OVERRIDE_1 ;
 int VFE_0_CGC_OVERRIDE_1_IMAGE_Mx_CGC_OVERRIDE (scalar_t__) ;
 int vfe_reg_clr (struct vfe_device*,int ,int ) ;
 int vfe_reg_set (struct vfe_device*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void vfe_set_cgc_override(struct vfe_device *vfe, u8 wm, u8 enable)
{
 u32 val = VFE_0_CGC_OVERRIDE_1_IMAGE_Mx_CGC_OVERRIDE(wm);

 if (enable)
  vfe_reg_set(vfe, VFE_0_CGC_OVERRIDE_1, val);
 else
  vfe_reg_clr(vfe, VFE_0_CGC_OVERRIDE_1, val);

 wmb();
}
