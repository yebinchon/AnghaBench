
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int priv; } ;


 int cpmac_driver ;
 TYPE_1__* cpmac_mii ;
 int iounmap (int ) ;
 int mdiobus_free (TYPE_1__*) ;
 int mdiobus_unregister (TYPE_1__*) ;
 int platform_driver_unregister (int *) ;

void cpmac_exit(void)
{
 platform_driver_unregister(&cpmac_driver);
 mdiobus_unregister(cpmac_mii);
 iounmap(cpmac_mii->priv);
 mdiobus_free(cpmac_mii);
}
