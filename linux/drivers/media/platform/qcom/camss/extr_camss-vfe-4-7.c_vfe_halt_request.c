
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_device {scalar_t__ base; } ;


 scalar_t__ VFE_0_BUS_BDG_CMD ;
 int VFE_0_BUS_BDG_CMD_HALT_REQ ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void vfe_halt_request(struct vfe_device *vfe)
{
 writel_relaxed(VFE_0_BUS_BDG_CMD_HALT_REQ,
         vfe->base + VFE_0_BUS_BDG_CMD);
}
