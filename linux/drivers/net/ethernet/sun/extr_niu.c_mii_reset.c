
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int port; int dev; int phy_addr; } ;


 int BMCR_RESET ;
 int ENODEV ;
 int MII_BMCR ;
 int mii_read (struct niu*,int ,int ) ;
 int mii_write (struct niu*,int ,int ,int) ;
 int netdev_err (int ,char*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int mii_reset(struct niu *np)
{
 int limit, err;

 err = mii_write(np, np->phy_addr, MII_BMCR, BMCR_RESET);
 if (err)
  return err;

 limit = 1000;
 while (--limit >= 0) {
  udelay(500);
  err = mii_read(np, np->phy_addr, MII_BMCR);
  if (err < 0)
   return err;
  if (!(err & BMCR_RESET))
   break;
 }
 if (limit < 0) {
  netdev_err(np->dev, "Port %u MII would not reset, bmcr[%04x]\n",
      np->port, err);
  return -ENODEV;
 }

 return 0;
}
