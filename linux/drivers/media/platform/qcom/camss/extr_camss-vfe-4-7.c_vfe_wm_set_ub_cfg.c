
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct vfe_device {scalar_t__ base; } ;


 scalar_t__ VFE_0_BUS_IMAGE_MASTER_n_WR_UB_CFG (int ) ;
 int VFE_0_BUS_IMAGE_MASTER_n_WR_UB_CFG_OFFSET_SHIFT ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void vfe_wm_set_ub_cfg(struct vfe_device *vfe, u8 wm,
         u16 offset, u16 depth)
{
 u32 reg;

 reg = (offset << VFE_0_BUS_IMAGE_MASTER_n_WR_UB_CFG_OFFSET_SHIFT) |
  depth;
 writel_relaxed(reg, vfe->base + VFE_0_BUS_IMAGE_MASTER_n_WR_UB_CFG(wm));
}
