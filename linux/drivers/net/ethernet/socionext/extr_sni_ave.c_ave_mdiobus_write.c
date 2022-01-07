
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;
struct ave_private {scalar_t__ base; } ;


 scalar_t__ AVE_MDIOAR ;
 scalar_t__ AVE_MDIOCTR ;
 int AVE_MDIOCTR_RREQ ;
 int AVE_MDIOCTR_WREQ ;
 scalar_t__ AVE_MDIOSR ;
 int AVE_MDIOSR_STS ;
 scalar_t__ AVE_MDIOWDR ;
 int netdev_err (struct net_device*,char*,int,int) ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ave_mdiobus_write(struct mii_bus *bus, int phyid, int regnum,
        u16 val)
{
 struct net_device *ndev = bus->priv;
 struct ave_private *priv;
 u32 mdioctl, mdiosr;
 int ret;

 priv = netdev_priv(ndev);


 writel((phyid << 8) | regnum, priv->base + AVE_MDIOAR);


 writel(val, priv->base + AVE_MDIOWDR);


 mdioctl = readl(priv->base + AVE_MDIOCTR);
 writel((mdioctl | AVE_MDIOCTR_WREQ) & ~AVE_MDIOCTR_RREQ,
        priv->base + AVE_MDIOCTR);

 ret = readl_poll_timeout(priv->base + AVE_MDIOSR, mdiosr,
     !(mdiosr & AVE_MDIOSR_STS), 20, 2000);
 if (ret)
  netdev_err(ndev, "failed to write (phy:%d reg:%x)\n",
      phyid, regnum);

 return ret;
}
