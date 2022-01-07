
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfe_device {scalar_t__ base; } ;


 scalar_t__ VFE_0_IRQ_CLEAR_0 ;
 scalar_t__ VFE_0_IRQ_CLEAR_1 ;
 scalar_t__ VFE_0_IRQ_CMD ;
 int VFE_0_IRQ_CMD_GLOBAL_CLEAR ;
 scalar_t__ VFE_0_IRQ_STATUS_0 ;
 scalar_t__ VFE_0_IRQ_STATUS_1 ;
 int readl_relaxed (scalar_t__) ;
 int wmb () ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void vfe_isr_read(struct vfe_device *vfe, u32 *value0, u32 *value1)
{
 *value0 = readl_relaxed(vfe->base + VFE_0_IRQ_STATUS_0);
 *value1 = readl_relaxed(vfe->base + VFE_0_IRQ_STATUS_1);

 writel_relaxed(*value0, vfe->base + VFE_0_IRQ_CLEAR_0);
 writel_relaxed(*value1, vfe->base + VFE_0_IRQ_CLEAR_1);

 wmb();
 writel_relaxed(VFE_0_IRQ_CMD_GLOBAL_CLEAR, vfe->base + VFE_0_IRQ_CMD);
}
