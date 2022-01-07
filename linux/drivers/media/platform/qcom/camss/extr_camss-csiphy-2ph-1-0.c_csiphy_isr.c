
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct csiphy_device {scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ CAMSS_CSI_PHY_GLBL_IRQ_CMD ;
 scalar_t__ CAMSS_CSI_PHY_INTERRUPT_CLEARn (int) ;
 scalar_t__ CAMSS_CSI_PHY_INTERRUPT_STATUSn (int) ;
 int IRQ_HANDLED ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t csiphy_isr(int irq, void *dev)
{
 struct csiphy_device *csiphy = dev;
 u8 i;

 for (i = 0; i < 8; i++) {
  u8 val = readl_relaxed(csiphy->base +
           CAMSS_CSI_PHY_INTERRUPT_STATUSn(i));
  writel_relaxed(val, csiphy->base +
          CAMSS_CSI_PHY_INTERRUPT_CLEARn(i));
  writel_relaxed(0x1, csiphy->base + CAMSS_CSI_PHY_GLBL_IRQ_CMD);
  writel_relaxed(0x0, csiphy->base + CAMSS_CSI_PHY_GLBL_IRQ_CMD);
  writel_relaxed(0x0, csiphy->base +
          CAMSS_CSI_PHY_INTERRUPT_CLEARn(i));
 }

 return IRQ_HANDLED;
}
