
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfe_device {scalar_t__ base; } ;


 scalar_t__ VFE_0_BUS_BDG_QOS_CFG_0 ;
 int VFE_0_BUS_BDG_QOS_CFG_0_CFG ;
 scalar_t__ VFE_0_BUS_BDG_QOS_CFG_1 ;
 scalar_t__ VFE_0_BUS_BDG_QOS_CFG_2 ;
 scalar_t__ VFE_0_BUS_BDG_QOS_CFG_3 ;
 scalar_t__ VFE_0_BUS_BDG_QOS_CFG_4 ;
 scalar_t__ VFE_0_BUS_BDG_QOS_CFG_5 ;
 scalar_t__ VFE_0_BUS_BDG_QOS_CFG_6 ;
 scalar_t__ VFE_0_BUS_BDG_QOS_CFG_7 ;
 int VFE_0_BUS_BDG_QOS_CFG_7_CFG ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void vfe_set_qos(struct vfe_device *vfe)
{
 u32 val = VFE_0_BUS_BDG_QOS_CFG_0_CFG;
 u32 val7 = VFE_0_BUS_BDG_QOS_CFG_7_CFG;

 writel_relaxed(val, vfe->base + VFE_0_BUS_BDG_QOS_CFG_0);
 writel_relaxed(val, vfe->base + VFE_0_BUS_BDG_QOS_CFG_1);
 writel_relaxed(val, vfe->base + VFE_0_BUS_BDG_QOS_CFG_2);
 writel_relaxed(val, vfe->base + VFE_0_BUS_BDG_QOS_CFG_3);
 writel_relaxed(val, vfe->base + VFE_0_BUS_BDG_QOS_CFG_4);
 writel_relaxed(val, vfe->base + VFE_0_BUS_BDG_QOS_CFG_5);
 writel_relaxed(val, vfe->base + VFE_0_BUS_BDG_QOS_CFG_6);
 writel_relaxed(val7, vfe->base + VFE_0_BUS_BDG_QOS_CFG_7);
}
