
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct vfe_device {scalar_t__ base; } ;


 scalar_t__ VFE_0_MODULE_CFG ;
 int VFE_0_MODULE_CFG_CHROMA_UPSAMPLE ;
 int VFE_0_MODULE_CFG_CROP_ENC ;
 int VFE_0_MODULE_CFG_DEMUX ;
 int VFE_0_MODULE_CFG_SCALE_ENC ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void vfe_set_module_cfg(struct vfe_device *vfe, u8 enable)
{
 u32 val = VFE_0_MODULE_CFG_DEMUX |
    VFE_0_MODULE_CFG_CHROMA_UPSAMPLE |
    VFE_0_MODULE_CFG_SCALE_ENC |
    VFE_0_MODULE_CFG_CROP_ENC;

 if (enable)
  writel_relaxed(val, vfe->base + VFE_0_MODULE_CFG);
 else
  writel_relaxed(0x0, vfe->base + VFE_0_MODULE_CFG);
}
