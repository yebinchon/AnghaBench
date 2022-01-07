
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {scalar_t__ base; scalar_t__ digital; } ;
struct TYPE_8__ {int napi; } ;
struct emac_adapter {TYPE_3__ phy; int mii_bus; TYPE_2__* phydev; TYPE_4__ rx_q; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_6__ {TYPE_1__ mdio; } ;


 struct net_device* dev_get_drvdata (int *) ;
 int emac_clks_teardown (struct emac_adapter*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (scalar_t__) ;
 int mdiobus_unregister (int ) ;
 struct emac_adapter* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int put_device (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int emac_remove(struct platform_device *pdev)
{
 struct net_device *netdev = dev_get_drvdata(&pdev->dev);
 struct emac_adapter *adpt = netdev_priv(netdev);

 unregister_netdev(netdev);
 netif_napi_del(&adpt->rx_q.napi);

 emac_clks_teardown(adpt);

 put_device(&adpt->phydev->mdio.dev);
 mdiobus_unregister(adpt->mii_bus);
 free_netdev(netdev);

 if (adpt->phy.digital)
  iounmap(adpt->phy.digital);
 iounmap(adpt->phy.base);

 return 0;
}
