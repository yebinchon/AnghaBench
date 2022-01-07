
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {int rx_pause; int tx_pause; int pause_autoneg; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;


 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xgene_get_pauseparam(struct net_device *ndev,
     struct ethtool_pauseparam *pp)
{
 struct xgene_enet_pdata *pdata = netdev_priv(ndev);

 pp->autoneg = pdata->pause_autoneg;
 pp->tx_pause = pdata->tx_pause;
 pp->rx_pause = pdata->rx_pause;
}
