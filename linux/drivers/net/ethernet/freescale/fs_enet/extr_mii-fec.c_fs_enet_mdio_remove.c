
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mii_bus {struct fec_info* priv; } ;
struct fec_info {int fecp; } ;


 int iounmap (int ) ;
 int kfree (struct fec_info*) ;
 int mdiobus_free (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;
 struct mii_bus* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int fs_enet_mdio_remove(struct platform_device *ofdev)
{
 struct mii_bus *bus = platform_get_drvdata(ofdev);
 struct fec_info *fec = bus->priv;

 mdiobus_unregister(bus);
 iounmap(fec->fecp);
 kfree(fec);
 mdiobus_free(bus);

 return 0;
}
