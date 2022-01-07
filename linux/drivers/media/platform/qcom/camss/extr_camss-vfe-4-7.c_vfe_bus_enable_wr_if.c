
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct vfe_device {scalar_t__ base; } ;


 scalar_t__ VFE_0_BUS_CFG ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void vfe_bus_enable_wr_if(struct vfe_device *vfe, u8 enable)
{
 if (enable)
  writel_relaxed(0x101, vfe->base + VFE_0_BUS_CFG);
 else
  writel_relaxed(0, vfe->base + VFE_0_BUS_CFG);
}
