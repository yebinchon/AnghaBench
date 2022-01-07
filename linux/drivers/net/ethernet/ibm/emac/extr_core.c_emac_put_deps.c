
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_instance {int tah_dev; int mdio_dev; int rgmii_dev; int zmii_dev; int mal_dev; } ;


 int of_dev_put (int ) ;

__attribute__((used)) static void emac_put_deps(struct emac_instance *dev)
{
 of_dev_put(dev->mal_dev);
 of_dev_put(dev->zmii_dev);
 of_dev_put(dev->rgmii_dev);
 of_dev_put(dev->mdio_dev);
 of_dev_put(dev->tah_dev);
}
