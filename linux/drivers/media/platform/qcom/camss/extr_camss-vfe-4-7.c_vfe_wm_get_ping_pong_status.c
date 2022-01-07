
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vfe_device {scalar_t__ base; } ;


 scalar_t__ VFE_0_BUS_PING_PONG_STATUS ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int vfe_wm_get_ping_pong_status(struct vfe_device *vfe, u8 wm)
{
 u32 reg;

 reg = readl_relaxed(vfe->base + VFE_0_BUS_PING_PONG_STATUS);

 return (reg >> wm) & 0x1;
}
