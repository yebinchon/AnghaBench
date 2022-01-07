
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int mdiobus_unregister (int ) ;
 int platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int aspeed_mdio_remove(struct platform_device *pdev)
{
 mdiobus_unregister(platform_get_drvdata(pdev));

 return 0;
}
