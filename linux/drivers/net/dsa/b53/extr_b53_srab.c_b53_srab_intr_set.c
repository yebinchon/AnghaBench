
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b53_srab_priv {scalar_t__ regs; } ;


 scalar_t__ B53_SRAB_CTRLS ;
 int B53_SRAB_CTRLS_HOST_INTR ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void b53_srab_intr_set(struct b53_srab_priv *priv, bool set)
{
 u32 reg;

 reg = readl(priv->regs + B53_SRAB_CTRLS);
 if (set)
  reg |= B53_SRAB_CTRLS_HOST_INTR;
 else
  reg &= ~B53_SRAB_CTRLS_HOST_INTR;
 writel(reg, priv->regs + B53_SRAB_CTRLS);
}
