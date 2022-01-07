
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int val_in; int reg_num; int phy_id; int val_out; } ;
struct ifreq {int dummy; } ;
struct TYPE_2__ {int phy_addr; } ;
struct bnxt {TYPE_1__ link_info; } ;


 int EAGAIN ;
 int EOPNOTSUPP ;



 int bnxt_hwrm_port_phy_read (struct bnxt*,int ,int ,int *) ;
 int bnxt_hwrm_port_phy_write (struct bnxt*,int ,int ,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int bnxt_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct mii_ioctl_data *mdio = if_mii(ifr);
 struct bnxt *bp = netdev_priv(dev);
 int rc;

 switch (cmd) {
 case 130:
  mdio->phy_id = bp->link_info.phy_addr;


 case 129: {
  u16 mii_regval = 0;

  if (!netif_running(dev))
   return -EAGAIN;

  rc = bnxt_hwrm_port_phy_read(bp, mdio->phy_id, mdio->reg_num,
          &mii_regval);
  mdio->val_out = mii_regval;
  return rc;
 }

 case 128:
  if (!netif_running(dev))
   return -EAGAIN;

  return bnxt_hwrm_port_phy_write(bp, mdio->phy_id, mdio->reg_num,
      mdio->val_in);

 default:

  break;
 }
 return -EOPNOTSUPP;
}
