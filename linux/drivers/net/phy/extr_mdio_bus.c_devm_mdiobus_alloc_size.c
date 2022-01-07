
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int _devm_mdiobus_free ;
 int devres_add (struct device*,struct mii_bus**) ;
 struct mii_bus** devres_alloc (int ,int,int ) ;
 int devres_free (struct mii_bus**) ;
 struct mii_bus* mdiobus_alloc_size (int) ;

struct mii_bus *devm_mdiobus_alloc_size(struct device *dev, int sizeof_priv)
{
 struct mii_bus **ptr, *bus;

 ptr = devres_alloc(_devm_mdiobus_free, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ((void*)0);


 bus = mdiobus_alloc_size(sizeof_priv);
 if (bus) {
  *ptr = bus;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return bus;
}
