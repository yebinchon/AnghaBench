
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucc_geth_private {TYPE_2__* ug_info; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int phy_node; int tbi_node; } ;


 int free_netdev (struct net_device*) ;
 struct ucc_geth_private* netdev_priv (struct net_device*) ;
 int of_node_put (int ) ;
 int of_phy_deregister_fixed_link (struct device_node*) ;
 scalar_t__ of_phy_is_fixed_link (struct device_node*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int ucc_geth_memclean (struct ucc_geth_private*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ucc_geth_remove(struct platform_device* ofdev)
{
 struct net_device *dev = platform_get_drvdata(ofdev);
 struct ucc_geth_private *ugeth = netdev_priv(dev);
 struct device_node *np = ofdev->dev.of_node;

 unregister_netdev(dev);
 free_netdev(dev);
 ucc_geth_memclean(ugeth);
 if (of_phy_is_fixed_link(np))
  of_phy_deregister_fixed_link(np);
 of_node_put(ugeth->ug_info->tbi_node);
 of_node_put(ugeth->ug_info->phy_node);

 return 0;
}
