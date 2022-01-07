
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_ioctl_data {int val_in; int reg_num; int phy_id; } ;
struct ifreq {int dummy; } ;
struct bnx2x {int mdio; } ;


 int DP (int ,char*,int ,int ,int ) ;
 int EAGAIN ;
 int NETIF_MSG_LINK ;

 int bnx2x_hwtstamp_ioctl (struct bnx2x*,struct ifreq*) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int mdio_mii_ioctl (int *,struct mii_ioctl_data*,int) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int bnx2x_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct bnx2x *bp = netdev_priv(dev);
 struct mii_ioctl_data *mdio = if_mii(ifr);

 if (!netif_running(dev))
  return -EAGAIN;

 switch (cmd) {
 case 128:
  return bnx2x_hwtstamp_ioctl(bp, ifr);
 default:
  DP(NETIF_MSG_LINK, "ioctl: phy id 0x%x, reg 0x%x, val_in 0x%x\n",
     mdio->phy_id, mdio->reg_num, mdio->val_in);
  return mdio_mii_ioctl(&bp->mdio, mdio, cmd);
 }
}
