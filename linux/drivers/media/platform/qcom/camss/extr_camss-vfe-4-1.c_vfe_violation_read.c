
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfe_device {scalar_t__ base; } ;


 scalar_t__ VFE_0_VIOLATION_STATUS ;
 int pr_err_ratelimited (char*,int ) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static void vfe_violation_read(struct vfe_device *vfe)
{
 u32 violation = readl_relaxed(vfe->base + VFE_0_VIOLATION_STATUS);

 pr_err_ratelimited("VFE: violation = 0x%08x\n", violation);
}
