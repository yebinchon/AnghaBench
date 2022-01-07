
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ks8842_adapter {int hw_addr; int tasklet; } ;


 int IORESOURCE_MEM ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct ks8842_adapter* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int tasklet_kill (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ks8842_remove(struct platform_device *pdev)
{
 struct net_device *netdev = platform_get_drvdata(pdev);
 struct ks8842_adapter *adapter = netdev_priv(netdev);
 struct resource *iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 unregister_netdev(netdev);
 tasklet_kill(&adapter->tasklet);
 iounmap(adapter->hw_addr);
 free_netdev(netdev);
 release_mem_region(iomem->start, resource_size(iomem));
 return 0;
}
