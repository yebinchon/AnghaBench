
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ei_device {int mem; } ;
struct ax_device {int map2; } ;


 int IORESOURCE_MEM ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 struct ax_device* to_ax_dev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ax_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct ei_device *ei_local = netdev_priv(dev);
 struct ax_device *ax = to_ax_dev(dev);
 struct resource *mem;

 unregister_netdev(dev);

 iounmap(ei_local->mem);
 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(mem->start, resource_size(mem));

 if (ax->map2) {
  iounmap(ax->map2);
  mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
  release_mem_region(mem->start, resource_size(mem));
 }

 platform_set_drvdata(pdev, ((void*)0));
 free_netdev(dev);

 return 0;
}
