
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct bcm_sysport_priv {int dsa_notifier; } ;


 struct net_device* dev_get_drvdata (TYPE_1__*) ;
 int dev_set_drvdata (TYPE_1__*,int *) ;
 int free_netdev (struct net_device*) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int of_phy_deregister_fixed_link (struct device_node*) ;
 scalar_t__ of_phy_is_fixed_link (struct device_node*) ;
 int unregister_dsa_notifier (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int bcm_sysport_remove(struct platform_device *pdev)
{
 struct net_device *dev = dev_get_drvdata(&pdev->dev);
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 struct device_node *dn = pdev->dev.of_node;




 unregister_dsa_notifier(&priv->dsa_notifier);
 unregister_netdev(dev);
 if (of_phy_is_fixed_link(dn))
  of_phy_deregister_fixed_link(dn);
 free_netdev(dev);
 dev_set_drvdata(&pdev->dev, ((void*)0));

 return 0;
}
