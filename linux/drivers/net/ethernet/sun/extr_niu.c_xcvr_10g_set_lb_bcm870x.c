
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu_link_config {scalar_t__ loopback_mode; } ;
struct niu {int phy_addr; struct niu_link_config link_config; } ;


 int BCM8704_PCS_DEV_ADDR ;
 int BMCR_LOOPBACK ;
 scalar_t__ LOOPBACK_MAC ;
 int MII_BMCR ;
 int mdio_read (struct niu*,int ,int ,int ) ;
 int mdio_write (struct niu*,int ,int ,int ,int) ;

__attribute__((used)) static int xcvr_10g_set_lb_bcm870x(struct niu *np)
{
 struct niu_link_config *lp = &np->link_config;
 int err;

 err = mdio_read(np, np->phy_addr, BCM8704_PCS_DEV_ADDR,
   MII_BMCR);
 if (err < 0)
  return err;

 err &= ~BMCR_LOOPBACK;

 if (lp->loopback_mode == LOOPBACK_MAC)
  err |= BMCR_LOOPBACK;

 err = mdio_write(np, np->phy_addr, BCM8704_PCS_DEV_ADDR,
    MII_BMCR, err);
 if (err)
  return err;

 return 0;
}
