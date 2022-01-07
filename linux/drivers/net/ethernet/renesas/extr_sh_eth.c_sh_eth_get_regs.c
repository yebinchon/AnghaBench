
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_eth_private {TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct TYPE_2__ {int dev; } ;


 int SH_ETH_REG_DUMP_VERSION ;
 int __sh_eth_get_regs (struct net_device*,void*) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static void sh_eth_get_regs(struct net_device *ndev, struct ethtool_regs *regs,
       void *buf)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);

 regs->version = SH_ETH_REG_DUMP_VERSION;

 pm_runtime_get_sync(&mdp->pdev->dev);
 __sh_eth_get_regs(ndev, buf);
 pm_runtime_put_sync(&mdp->pdev->dev);
}
