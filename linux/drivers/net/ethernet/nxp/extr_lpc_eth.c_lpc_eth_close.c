
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdata_local {int clk; int lock; int net_base; int napi; TYPE_1__* pdev; } ;
struct net_device {scalar_t__ phydev; int name; } ;
struct TYPE_2__ {int dev; } ;


 int LPC_ENET_MAC1 (int ) ;
 int LPC_ENET_MAC2 (int ) ;
 int __lpc_eth_reset (struct netdata_local*) ;
 int clk_disable_unprepare (int ) ;
 int dev_dbg (int *,char*,int ) ;
 int napi_disable (int *) ;
 struct netdata_local* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_msg_ifdown (struct netdata_local*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int ) ;

__attribute__((used)) static int lpc_eth_close(struct net_device *ndev)
{
 unsigned long flags;
 struct netdata_local *pldat = netdev_priv(ndev);

 if (netif_msg_ifdown(pldat))
  dev_dbg(&pldat->pdev->dev, "shutting down %s\n", ndev->name);

 napi_disable(&pldat->napi);
 netif_stop_queue(ndev);

 if (ndev->phydev)
  phy_stop(ndev->phydev);

 spin_lock_irqsave(&pldat->lock, flags);
 __lpc_eth_reset(pldat);
 netif_carrier_off(ndev);
 writel(0, LPC_ENET_MAC1(pldat->net_base));
 writel(0, LPC_ENET_MAC2(pldat->net_base));
 spin_unlock_irqrestore(&pldat->lock, flags);

 clk_disable_unprepare(pldat->clk);

 return 0;
}
