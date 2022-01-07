
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct csiphy_device {scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ CSIPHY_3PH_CMN_CSI_COMMON_CTRLn (int) ;
 scalar_t__ CSIPHY_3PH_CMN_CSI_COMMON_STATUSn (int) ;
 int IRQ_HANDLED ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t csiphy_isr(int irq, void *dev)
{
 struct csiphy_device *csiphy = dev;
 int i;

 for (i = 0; i < 11; i++) {
  int c = i + 22;
  u8 val = readl_relaxed(csiphy->base +
           CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(i));

  writel_relaxed(val, csiphy->base +
        CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(c));
 }

 writel_relaxed(0x1, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(10));
 writel_relaxed(0x0, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(10));

 for (i = 22; i < 33; i++)
  writel_relaxed(0x0, csiphy->base +
        CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i));

 return IRQ_HANDLED;
}
