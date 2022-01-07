
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mii_bus {struct hisi_femac_mdio_data* priv; } ;
struct hisi_femac_mdio_data {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int mdiobus_free (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;
 struct mii_bus* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int hisi_femac_mdio_remove(struct platform_device *pdev)
{
 struct mii_bus *bus = platform_get_drvdata(pdev);
 struct hisi_femac_mdio_data *data = bus->priv;

 mdiobus_unregister(bus);
 clk_disable_unprepare(data->clk);
 mdiobus_free(bus);

 return 0;
}
