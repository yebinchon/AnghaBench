
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct bnx2x {int link_params; } ;


 int DEFAULT_PHY_DEV_ADDR ;
 int DP (int ,char*,int,int,...) ;
 int MDIO_DEVAD_NONE ;
 int NETIF_MSG_LINK ;
 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_phy_read (int *,int,int,int,int*) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_mdio_read(struct net_device *netdev, int prtad,
      int devad, u16 addr)
{
 struct bnx2x *bp = netdev_priv(netdev);
 u16 value;
 int rc;

 DP(NETIF_MSG_LINK, "mdio_read: prtad 0x%x, devad 0x%x, addr 0x%x\n",
    prtad, devad, addr);


 devad = (devad == MDIO_DEVAD_NONE) ? DEFAULT_PHY_DEV_ADDR : devad;

 bnx2x_acquire_phy_lock(bp);
 rc = bnx2x_phy_read(&bp->link_params, prtad, devad, addr, &value);
 bnx2x_release_phy_lock(bp);
 DP(NETIF_MSG_LINK, "mdio_read_val 0x%x rc = 0x%x\n", value, rc);

 if (!rc)
  rc = value;
 return rc;
}
