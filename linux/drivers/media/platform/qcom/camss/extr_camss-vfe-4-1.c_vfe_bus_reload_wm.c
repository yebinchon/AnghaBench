
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vfe_device {scalar_t__ base; } ;


 scalar_t__ VFE_0_BUS_CMD ;
 int VFE_0_BUS_CMD_Mx_RLD_CMD (int ) ;
 int wmb () ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void vfe_bus_reload_wm(struct vfe_device *vfe, u8 wm)
{
 wmb();
 writel_relaxed(VFE_0_BUS_CMD_Mx_RLD_CMD(wm), vfe->base + VFE_0_BUS_CMD);
 wmb();
}
