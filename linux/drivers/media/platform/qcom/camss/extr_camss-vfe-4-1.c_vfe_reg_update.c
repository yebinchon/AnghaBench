
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_device {scalar_t__ base; int reg_update; } ;
typedef enum vfe_line_id { ____Placeholder_vfe_line_id } vfe_line_id ;


 scalar_t__ VFE_0_REG_UPDATE ;
 int VFE_0_REG_UPDATE_line_n (int) ;
 int wmb () ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void vfe_reg_update(struct vfe_device *vfe, enum vfe_line_id line_id)
{
 vfe->reg_update |= VFE_0_REG_UPDATE_line_n(line_id);
 wmb();
 writel_relaxed(vfe->reg_update, vfe->base + VFE_0_REG_UPDATE);
 wmb();
}
