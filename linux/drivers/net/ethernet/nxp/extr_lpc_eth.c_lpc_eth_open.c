
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdata_local {int napi; int clk; TYPE_1__* pdev; } ;
struct net_device {int phydev; int name; } ;
struct TYPE_2__ {int dev; } ;


 int __lpc_eth_init (struct netdata_local*) ;
 int __lpc_eth_reset (struct netdata_local*) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (int *,char*,int ) ;
 int napi_enable (int *) ;
 struct netdata_local* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_ifup (struct netdata_local*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_resume (int ) ;
 int phy_start (int ) ;

__attribute__((used)) static int lpc_eth_open(struct net_device *ndev)
{
 struct netdata_local *pldat = netdev_priv(ndev);
 int ret;

 if (netif_msg_ifup(pldat))
  dev_dbg(&pldat->pdev->dev, "enabling %s\n", ndev->name);

 ret = clk_prepare_enable(pldat->clk);
 if (ret)
  return ret;


 phy_resume(ndev->phydev);


 __lpc_eth_reset(pldat);
 __lpc_eth_init(pldat);


 phy_start(ndev->phydev);
 netif_start_queue(ndev);
 napi_enable(&pldat->napi);

 return 0;
}
