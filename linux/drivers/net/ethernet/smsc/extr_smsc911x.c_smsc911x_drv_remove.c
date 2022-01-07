
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int ioaddr; int mii_bus; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct net_device {int dummy; } ;


 int BUG_ON (int) ;
 int IORESOURCE_MEM ;
 int SMSC_TRACE (struct smsc911x_data*,int ,char*) ;
 int free_netdev (struct net_device*) ;
 int ifdown ;
 int iounmap (int ) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put (int *) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int smsc911x_disable_resources (struct platform_device*) ;
 int smsc911x_free_resources (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int smsc911x_drv_remove(struct platform_device *pdev)
{
 struct net_device *dev;
 struct smsc911x_data *pdata;
 struct resource *res;

 dev = platform_get_drvdata(pdev);
 BUG_ON(!dev);
 pdata = netdev_priv(dev);
 BUG_ON(!pdata);
 BUG_ON(!pdata->ioaddr);

 SMSC_TRACE(pdata, ifdown, "Stopping driver");

 unregister_netdev(dev);

 mdiobus_unregister(pdata->mii_bus);
 mdiobus_free(pdata->mii_bus);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
        "smsc911x-memory");
 if (!res)
  res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 release_mem_region(res->start, resource_size(res));

 iounmap(pdata->ioaddr);

 (void)smsc911x_disable_resources(pdev);
 smsc911x_free_resources(pdev);

 free_netdev(dev);

 pm_runtime_put(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
