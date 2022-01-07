
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdata_local {int net_base; } ;
struct mii_bus {struct netdata_local* priv; } ;


 int EIO ;
 int LPC_ENET_MADR (int ) ;
 int LPC_ENET_MCMD (int ) ;
 int LPC_ENET_MIND (int ) ;
 int LPC_ENET_MRDD (int ) ;
 int LPC_MCMD_READ ;
 int LPC_MIND_BUSY ;
 int cpu_relax () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int readl (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int lpc_mdio_read(struct mii_bus *bus, int phy_id, int phyreg)
{
 struct netdata_local *pldat = bus->priv;
 unsigned long timeout = jiffies + msecs_to_jiffies(100);
 int lps;

 writel(((phy_id << 8) | phyreg), LPC_ENET_MADR(pldat->net_base));
 writel(LPC_MCMD_READ, LPC_ENET_MCMD(pldat->net_base));


 while (readl(LPC_ENET_MIND(pldat->net_base)) & LPC_MIND_BUSY) {
  if (time_after(jiffies, timeout))
   return -EIO;
  cpu_relax();
 }

 lps = readl(LPC_ENET_MRDD(pldat->net_base));
 writel(0, LPC_ENET_MCMD(pldat->net_base));

 return lps;
}
