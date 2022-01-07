
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdio_mux_parent_bus {TYPE_1__* mii_bus; struct mdio_mux_child_bus* children; } ;
struct mdio_mux_child_bus {struct mdio_mux_child_bus* next; int mii_bus; } ;
struct TYPE_2__ {int dev; } ;


 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 int put_device (int *) ;

void mdio_mux_uninit(void *mux_handle)
{
 struct mdio_mux_parent_bus *pb = mux_handle;
 struct mdio_mux_child_bus *cb = pb->children;

 while (cb) {
  mdiobus_unregister(cb->mii_bus);
  mdiobus_free(cb->mii_bus);
  cb = cb->next;
 }

 put_device(&pb->mii_bus->dev);
}
