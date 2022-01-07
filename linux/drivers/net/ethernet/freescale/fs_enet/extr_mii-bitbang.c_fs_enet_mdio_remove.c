
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mii_bus {struct bb_info* priv; } ;
struct bb_info {int dir; } ;


 int free_mdio_bitbang (struct mii_bus*) ;
 int iounmap (int ) ;
 int kfree (struct bb_info*) ;
 int mdiobus_unregister (struct mii_bus*) ;
 struct mii_bus* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int fs_enet_mdio_remove(struct platform_device *ofdev)
{
 struct mii_bus *bus = platform_get_drvdata(ofdev);
 struct bb_info *bitbang = bus->priv;

 mdiobus_unregister(bus);
 free_mdio_bitbang(bus);
 iounmap(bitbang->dir);
 kfree(bitbang);

 return 0;
}
