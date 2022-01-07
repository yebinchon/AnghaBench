
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {struct mdiobb_ctrl* priv; } ;
struct mdiobb_ctrl {TYPE_1__* ops; } ;
struct TYPE_2__ {int owner; } ;


 int mdiobus_free (struct mii_bus*) ;
 int module_put (int ) ;

void free_mdio_bitbang(struct mii_bus *bus)
{
 struct mdiobb_ctrl *ctrl = bus->priv;

 module_put(ctrl->ops->owner);
 mdiobus_free(bus);
}
