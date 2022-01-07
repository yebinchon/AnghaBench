
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vfe_device {scalar_t__ base; } ;


 scalar_t__ VFE_0_BUS_IMAGE_MASTER_n_WR_PING_ADDR (int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void vfe_wm_set_ping_addr(struct vfe_device *vfe, u8 wm, u32 addr)
{
 writel_relaxed(addr,
         vfe->base + VFE_0_BUS_IMAGE_MASTER_n_WR_PING_ADDR(wm));
}
