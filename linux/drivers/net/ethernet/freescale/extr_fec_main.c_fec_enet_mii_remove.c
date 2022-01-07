
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fec_enet_private {int mii_bus; } ;


 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 scalar_t__ mii_cnt ;

__attribute__((used)) static void fec_enet_mii_remove(struct fec_enet_private *fep)
{
 if (--mii_cnt == 0) {
  mdiobus_unregister(fep->mii_bus);
  mdiobus_free(fep->mii_bus);
 }
}
