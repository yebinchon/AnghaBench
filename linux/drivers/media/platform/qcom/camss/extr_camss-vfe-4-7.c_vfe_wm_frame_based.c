
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct vfe_device {int dummy; } ;


 int VFE_0_BUS_IMAGE_MASTER_n_WR_ADDR_CFG (scalar_t__) ;
 int VFE_0_BUS_IMAGE_MASTER_n_WR_ADDR_CFG_FRM_BASED_SHIFT ;
 int vfe_reg_clr (struct vfe_device*,int ,int) ;
 int vfe_reg_set (struct vfe_device*,int ,int) ;

__attribute__((used)) static void vfe_wm_frame_based(struct vfe_device *vfe, u8 wm, u8 enable)
{
 if (enable)
  vfe_reg_set(vfe, VFE_0_BUS_IMAGE_MASTER_n_WR_ADDR_CFG(wm),
   1 << VFE_0_BUS_IMAGE_MASTER_n_WR_ADDR_CFG_FRM_BASED_SHIFT);
 else
  vfe_reg_clr(vfe, VFE_0_BUS_IMAGE_MASTER_n_WR_ADDR_CFG(wm),
   1 << VFE_0_BUS_IMAGE_MASTER_n_WR_ADDR_CFG_FRM_BASED_SHIFT);
}
