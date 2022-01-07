
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct at91_priv {int clk; int reg_base; } ;


 int IORESOURCE_MEM ;
 int clk_put (int ) ;
 int free_candev (struct net_device*) ;
 int iounmap (int ) ;
 struct at91_priv* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int at91_can_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct at91_priv *priv = netdev_priv(dev);
 struct resource *res;

 unregister_netdev(dev);

 iounmap(priv->reg_base);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, resource_size(res));

 clk_put(priv->clk);

 free_candev(dev);

 return 0;
}
