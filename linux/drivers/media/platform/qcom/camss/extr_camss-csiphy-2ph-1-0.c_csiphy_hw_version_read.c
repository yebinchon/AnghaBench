
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct csiphy_device {scalar_t__ base; } ;


 scalar_t__ CAMSS_CSI_PHY_HW_VERSION ;
 int dev_dbg (struct device*,char*,int ) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static void csiphy_hw_version_read(struct csiphy_device *csiphy,
       struct device *dev)
{
 u8 hw_version = readl_relaxed(csiphy->base +
          CAMSS_CSI_PHY_HW_VERSION);

 dev_dbg(dev, "CSIPHY HW Version = 0x%02x\n", hw_version);
}
