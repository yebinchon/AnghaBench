
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct net_device {scalar_t__ phydev; } ;
struct altera_tse_private {TYPE_1__* device; } ;
struct TYPE_2__ {int of_node; } ;


 int altera_tse_mdio_destroy (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 int of_phy_deregister_fixed_link (int ) ;
 scalar_t__ of_phy_is_fixed_link (int ) ;
 int phy_disconnect (scalar_t__) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int altera_tse_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct altera_tse_private *priv = netdev_priv(ndev);

 if (ndev->phydev) {
  phy_disconnect(ndev->phydev);

  if (of_phy_is_fixed_link(priv->device->of_node))
   of_phy_deregister_fixed_link(priv->device->of_node);
 }

 platform_set_drvdata(pdev, ((void*)0));
 altera_tse_mdio_destroy(ndev);
 unregister_netdev(ndev);
 free_netdev(ndev);

 return 0;
}
