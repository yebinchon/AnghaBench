
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csiphy_device {scalar_t__ base; } ;
struct csiphy_config {int dummy; } ;


 scalar_t__ CSIPHY_3PH_CMN_CSI_COMMON_CTRLn (int) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void csiphy_lanes_disable(struct csiphy_device *csiphy,
     struct csiphy_config *cfg)
{
 writel_relaxed(0, csiphy->base +
     CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(5));

 writel_relaxed(0, csiphy->base +
     CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(6));
}
