
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;
struct device {int dummy; } ;


 int mdiobus_free (struct mii_bus*) ;

__attribute__((used)) static void _devm_mdiobus_free(struct device *dev, void *res)
{
 mdiobus_free(*(struct mii_bus **)res);
}
