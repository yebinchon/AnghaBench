
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vfe_device {int dummy; } ;
typedef enum vfe_line_id { ____Placeholder_vfe_line_id } vfe_line_id ;


 int VFE_0_RDI_CFG_x (int) ;
 int VFE_0_RDI_CFG_x_RDI_M0_SEL_MASK ;
 int VFE_0_RDI_CFG_x_RDI_M0_SEL_SHIFT ;
 int vfe_reg_clr (struct vfe_device*,int ,int ) ;
 int vfe_reg_set (struct vfe_device*,int ,int) ;

__attribute__((used)) static void vfe_set_rdi_cid(struct vfe_device *vfe, enum vfe_line_id id, u8 cid)
{
 vfe_reg_clr(vfe, VFE_0_RDI_CFG_x(id),
      VFE_0_RDI_CFG_x_RDI_M0_SEL_MASK);

 vfe_reg_set(vfe, VFE_0_RDI_CFG_x(id),
      cid << VFE_0_RDI_CFG_x_RDI_M0_SEL_SHIFT);
}
