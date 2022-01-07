
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int _devm_mdiobus_free ;
 int devm_mdiobus_match ;
 int devres_release (struct device*,int ,int ,struct mii_bus*) ;

void devm_mdiobus_free(struct device *dev, struct mii_bus *bus)
{
 int rc;

 rc = devres_release(dev, _devm_mdiobus_free,
       devm_mdiobus_match, bus);
 WARN_ON(rc);
}
