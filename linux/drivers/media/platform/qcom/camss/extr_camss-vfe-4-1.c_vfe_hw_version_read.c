
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfe_device {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ VFE_0_HW_VERSION ;
 int dev_dbg (struct device*,char*,int ) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static void vfe_hw_version_read(struct vfe_device *vfe, struct device *dev)
{
 u32 hw_version = readl_relaxed(vfe->base + VFE_0_HW_VERSION);

 dev_dbg(dev, "VFE HW Version = 0x%08x\n", hw_version);
}
