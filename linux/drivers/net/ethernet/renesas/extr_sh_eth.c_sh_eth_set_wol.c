
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_eth_private {int wol_enabled; TYPE_2__* pdev; TYPE_1__* cd; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int magic; } ;


 int EOPNOTSUPP ;
 int WAKE_MAGIC ;
 int device_set_wakeup_enable (int *,int) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int sh_eth_set_wol(struct net_device *ndev, struct ethtool_wolinfo *wol)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);

 if (!mdp->cd->magic || wol->wolopts & ~WAKE_MAGIC)
  return -EOPNOTSUPP;

 mdp->wol_enabled = !!(wol->wolopts & WAKE_MAGIC);

 device_set_wakeup_enable(&mdp->pdev->dev, mdp->wol_enabled);

 return 0;
}
