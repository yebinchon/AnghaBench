
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct octeon_mgmt {int phy_np; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 struct octeon_mgmt* netdev_priv (struct net_device*) ;
 int of_node_put (int ) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int octeon_mgmt_remove(struct platform_device *pdev)
{
 struct net_device *netdev = platform_get_drvdata(pdev);
 struct octeon_mgmt *p = netdev_priv(netdev);

 unregister_netdev(netdev);
 of_node_put(p->phy_np);
 free_netdev(netdev);
 return 0;
}
