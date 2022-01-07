
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gem {int swrst_base; scalar_t__ phy_type; int dev; scalar_t__ regs; } ;


 scalar_t__ GREG_IMASK ;
 scalar_t__ GREG_SWRST ;
 int GREG_SWRST_RXRST ;
 int GREG_SWRST_TXRST ;
 int STOP_TRIES ;
 int gem_pcs_reinit_adv (struct gem*) ;
 int netdev_err (int ,char*) ;
 scalar_t__ phy_serdes ;
 scalar_t__ phy_serialink ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gem_reset(struct gem *gp)
{
 int limit;
 u32 val;


 writel(0xffffffff, gp->regs + GREG_IMASK);


 writel(gp->swrst_base | GREG_SWRST_TXRST | GREG_SWRST_RXRST,
        gp->regs + GREG_SWRST);

 limit = STOP_TRIES;

 do {
  udelay(20);
  val = readl(gp->regs + GREG_SWRST);
  if (limit-- <= 0)
   break;
 } while (val & (GREG_SWRST_TXRST | GREG_SWRST_RXRST));

 if (limit < 0)
  netdev_err(gp->dev, "SW reset is ghetto\n");

 if (gp->phy_type == phy_serialink || gp->phy_type == phy_serdes)
  gem_pcs_reinit_adv(gp);
}
