
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_device {scalar_t__ base; } ;


 scalar_t__ VFE_0_BUS_BDG_CMD ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void vfe_halt_clear(struct vfe_device *vfe)
{
 writel_relaxed(0x0, vfe->base + VFE_0_BUS_BDG_CMD);
}
