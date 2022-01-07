
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csiphy_device {scalar_t__ base; } ;


 scalar_t__ CSIPHY_3PH_CMN_CSI_COMMON_CTRLn (int ) ;
 int usleep_range (int,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void csiphy_reset(struct csiphy_device *csiphy)
{
 writel_relaxed(0x1, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(0));
 usleep_range(5000, 8000);
 writel_relaxed(0x0, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(0));
}
