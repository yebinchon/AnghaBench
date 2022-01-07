
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct cc770_priv {int reg_base; } ;


 int IORESOURCE_MEM ;
 int free_cc770dev (struct net_device*) ;
 int iounmap (int ) ;
 struct cc770_priv* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int unregister_cc770dev (struct net_device*) ;

__attribute__((used)) static int cc770_platform_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct cc770_priv *priv = netdev_priv(dev);
 struct resource *mem;

 unregister_cc770dev(dev);
 iounmap(priv->reg_base);
 free_cc770dev(dev);

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(mem->start, resource_size(mem));

 return 0;
}
