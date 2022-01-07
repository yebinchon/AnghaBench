
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct csiphy_device {scalar_t__ base; } ;


 int CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID ;
 scalar_t__ CSIPHY_3PH_CMN_CSI_COMMON_CTRLn (int) ;
 scalar_t__ CSIPHY_3PH_CMN_CSI_COMMON_STATUSn (int) ;
 int dev_err (struct device*,char*,int) ;
 int readl_relaxed (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void csiphy_hw_version_read(struct csiphy_device *csiphy,
       struct device *dev)
{
 u32 hw_version;

 writel(CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID,
        csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(6));

 hw_version = readl_relaxed(csiphy->base +
       CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(12));
 hw_version |= readl_relaxed(csiphy->base +
       CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(13)) << 8;
 hw_version |= readl_relaxed(csiphy->base +
       CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(14)) << 16;
 hw_version |= readl_relaxed(csiphy->base +
       CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(15)) << 24;

 dev_err(dev, "CSIPHY 3PH HW Version = 0x%08x\n", hw_version);
}
