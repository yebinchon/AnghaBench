
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {char* name; int phy_mask; int priv; int id; int (* reset ) (TYPE_1__*) ;int write; int read; } ;


 int AR7_REGS_MDIO ;
 int AR7_RESET_BIT_CPMAC_HI ;
 int AR7_RESET_BIT_CPMAC_LO ;
 int AR7_RESET_BIT_EPHY ;
 int CPMAC_MDIO_ALIVE ;
 int ENOMEM ;
 int ENXIO ;
 int MII_BUS_ID_SIZE ;
 int ar7_device_reset (int ) ;
 int ar7_gpio_disable (int) ;
 int cpmac_driver ;
 int cpmac_mdio_read ;
 int cpmac_mdio_reset (TYPE_1__*) ;
 int cpmac_mdio_write ;
 TYPE_1__* cpmac_mii ;
 int cpmac_read (int ,int ) ;
 int external_switch ;
 int ioremap (int ,int) ;
 int iounmap (int ) ;
 TYPE_1__* mdiobus_alloc () ;
 int mdiobus_free (TYPE_1__*) ;
 int mdiobus_register (TYPE_1__*) ;
 int mdiobus_unregister (TYPE_1__*) ;
 int msleep (int) ;
 int platform_driver_register (int *) ;
 int pr_err (char*) ;
 int snprintf (int ,int ,char*) ;
 int stub1 (TYPE_1__*) ;

int cpmac_init(void)
{
 u32 mask;
 int i, res;

 cpmac_mii = mdiobus_alloc();
 if (cpmac_mii == ((void*)0))
  return -ENOMEM;

 cpmac_mii->name = "cpmac-mii";
 cpmac_mii->read = cpmac_mdio_read;
 cpmac_mii->write = cpmac_mdio_write;
 cpmac_mii->reset = cpmac_mdio_reset;

 cpmac_mii->priv = ioremap(AR7_REGS_MDIO, 256);

 if (!cpmac_mii->priv) {
  pr_err("Can't ioremap mdio registers\n");
  res = -ENXIO;
  goto fail_alloc;
 }


 ar7_gpio_disable(26);
 ar7_gpio_disable(27);
 ar7_device_reset(AR7_RESET_BIT_CPMAC_LO);
 ar7_device_reset(AR7_RESET_BIT_CPMAC_HI);
 ar7_device_reset(AR7_RESET_BIT_EPHY);

 cpmac_mii->reset(cpmac_mii);

 for (i = 0; i < 300; i++) {
  mask = cpmac_read(cpmac_mii->priv, CPMAC_MDIO_ALIVE);
  if (mask)
   break;
  else
   msleep(10);
 }

 mask &= 0x7fffffff;
 if (mask & (mask - 1)) {
  external_switch = 1;
  mask = 0;
 }

 cpmac_mii->phy_mask = ~(mask | 0x80000000);
 snprintf(cpmac_mii->id, MII_BUS_ID_SIZE, "cpmac-1");

 res = mdiobus_register(cpmac_mii);
 if (res)
  goto fail_mii;

 res = platform_driver_register(&cpmac_driver);
 if (res)
  goto fail_cpmac;

 return 0;

fail_cpmac:
 mdiobus_unregister(cpmac_mii);

fail_mii:
 iounmap(cpmac_mii->priv);

fail_alloc:
 mdiobus_free(cpmac_mii);

 return res;
}
