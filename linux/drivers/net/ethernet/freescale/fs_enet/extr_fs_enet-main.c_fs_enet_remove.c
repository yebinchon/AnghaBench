
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct net_device {int dummy; } ;
struct fs_enet_private {TYPE_1__* fpi; int dev; TYPE_3__* ops; } ;
struct TYPE_6__ {int (* cleanup_data ) (struct net_device*) ;int (* free_bd ) (struct net_device*) ;} ;
struct TYPE_4__ {scalar_t__ clk_per; int phy_node; } ;


 int clk_disable_unprepare (scalar_t__) ;
 int dev_set_drvdata (int ,int *) ;
 int free_netdev (struct net_device*) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int of_node_put (int ) ;
 int of_phy_deregister_fixed_link (int ) ;
 scalar_t__ of_phy_is_fixed_link (int ) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int fs_enet_remove(struct platform_device *ofdev)
{
 struct net_device *ndev = platform_get_drvdata(ofdev);
 struct fs_enet_private *fep = netdev_priv(ndev);

 unregister_netdev(ndev);

 fep->ops->free_bd(ndev);
 fep->ops->cleanup_data(ndev);
 dev_set_drvdata(fep->dev, ((void*)0));
 of_node_put(fep->fpi->phy_node);
 if (fep->fpi->clk_per)
  clk_disable_unprepare(fep->fpi->clk_per);
 if (of_phy_is_fixed_link(ofdev->dev.of_node))
  of_phy_deregister_fixed_link(ofdev->dev.of_node);
 free_netdev(ndev);
 return 0;
}
