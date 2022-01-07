
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cvmx_smix_en {scalar_t__ u64; } ;
struct platform_device {int dummy; } ;
struct cavium_mdiobus {scalar_t__ register_base; int mii_bus; } ;


 scalar_t__ SMI_EN ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 int oct_mdio_writeq (scalar_t__,scalar_t__) ;
 struct cavium_mdiobus* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int octeon_mdiobus_remove(struct platform_device *pdev)
{
 struct cavium_mdiobus *bus;
 union cvmx_smix_en smi_en;

 bus = platform_get_drvdata(pdev);

 mdiobus_unregister(bus->mii_bus);
 mdiobus_free(bus->mii_bus);
 smi_en.u64 = 0;
 oct_mdio_writeq(smi_en.u64, bus->register_base + SMI_EN);
 return 0;
}
