
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdata_local {int dummy; } ;
struct mii_bus {scalar_t__ priv; } ;


 int __lpc_mii_mngt_reset (struct netdata_local*) ;

__attribute__((used)) static int lpc_mdio_reset(struct mii_bus *bus)
{
 return __lpc_mii_mngt_reset((struct netdata_local *)bus->priv);
}
