
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gem {int dev; scalar_t__ regs; } ;


 scalar_t__ PCS_MIICTRL ;
 int PCS_MIICTRL_RST ;
 int netdev_warn (int ,char*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gem_pcs_reset(struct gem *gp)
{
 int limit;
 u32 val;


 val = readl(gp->regs + PCS_MIICTRL);
 val |= PCS_MIICTRL_RST;
 writel(val, gp->regs + PCS_MIICTRL);

 limit = 32;
 while (readl(gp->regs + PCS_MIICTRL) & PCS_MIICTRL_RST) {
  udelay(100);
  if (limit-- <= 0)
   break;
 }
 if (limit < 0)
  netdev_warn(gp->dev, "PCS reset bit would not clear\n");
}
