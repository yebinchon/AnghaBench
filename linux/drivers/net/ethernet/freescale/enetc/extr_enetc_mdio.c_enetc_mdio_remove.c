
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_pf {scalar_t__ mdio; } ;


 int mdiobus_unregister (scalar_t__) ;

void enetc_mdio_remove(struct enetc_pf *pf)
{
 if (pf->mdio)
  mdiobus_unregister(pf->mdio);
}
