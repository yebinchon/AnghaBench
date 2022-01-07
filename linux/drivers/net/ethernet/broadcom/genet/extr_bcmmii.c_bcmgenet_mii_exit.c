
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct bcmgenet_priv {int mii_pdev; int phy_dn; TYPE_2__* pdev; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 int of_node_put (int ) ;
 int of_phy_deregister_fixed_link (struct device_node*) ;
 scalar_t__ of_phy_is_fixed_link (struct device_node*) ;
 int platform_device_unregister (int ) ;

void bcmgenet_mii_exit(struct net_device *dev)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 struct device_node *dn = priv->pdev->dev.of_node;

 if (of_phy_is_fixed_link(dn))
  of_phy_deregister_fixed_link(dn);
 of_node_put(priv->phy_dn);
 platform_device_unregister(priv->mii_pdev);
}
