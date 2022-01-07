
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfe_device {scalar_t__ base; } ;


 int BIT (int) ;
 scalar_t__ VFE_0_GLOBAL_RESET_CMD ;
 int VFE_0_GLOBAL_RESET_CMD_BUS ;
 int VFE_0_GLOBAL_RESET_CMD_BUS_BDG ;
 int VFE_0_GLOBAL_RESET_CMD_BUS_MISR ;
 int VFE_0_GLOBAL_RESET_CMD_CAMIF ;
 int VFE_0_GLOBAL_RESET_CMD_CORE ;
 int VFE_0_GLOBAL_RESET_CMD_DSP ;
 int VFE_0_GLOBAL_RESET_CMD_IDLE_CGC ;
 int VFE_0_GLOBAL_RESET_CMD_PM ;
 int VFE_0_GLOBAL_RESET_CMD_REGISTER ;
 int VFE_0_GLOBAL_RESET_CMD_TESTGEN ;
 scalar_t__ VFE_0_IRQ_MASK_0 ;
 int wmb () ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void vfe_global_reset(struct vfe_device *vfe)
{
 u32 reset_bits = VFE_0_GLOBAL_RESET_CMD_IDLE_CGC |
    VFE_0_GLOBAL_RESET_CMD_DSP |
    VFE_0_GLOBAL_RESET_CMD_TESTGEN |
    VFE_0_GLOBAL_RESET_CMD_BUS_MISR |
    VFE_0_GLOBAL_RESET_CMD_PM |
    VFE_0_GLOBAL_RESET_CMD_REGISTER |
    VFE_0_GLOBAL_RESET_CMD_BUS_BDG |
    VFE_0_GLOBAL_RESET_CMD_BUS |
    VFE_0_GLOBAL_RESET_CMD_CAMIF |
    VFE_0_GLOBAL_RESET_CMD_CORE;

 writel_relaxed(BIT(31), vfe->base + VFE_0_IRQ_MASK_0);
 wmb();
 writel_relaxed(reset_bits, vfe->base + VFE_0_GLOBAL_RESET_CMD);
}
