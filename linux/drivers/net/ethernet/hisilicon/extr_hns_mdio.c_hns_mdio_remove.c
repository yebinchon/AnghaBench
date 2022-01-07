
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mii_bus {int dummy; } ;


 int mdiobus_unregister (struct mii_bus*) ;
 struct mii_bus* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int hns_mdio_remove(struct platform_device *pdev)
{
 struct mii_bus *bus;

 bus = platform_get_drvdata(pdev);

 mdiobus_unregister(bus);
 platform_set_drvdata(pdev, ((void*)0));
 return 0;
}
